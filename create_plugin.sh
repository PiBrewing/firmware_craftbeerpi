#!/bin/bash

function create_plugin() {

    PLUGIN_NAME=$1
    PLUGIN_URL=$2
    PLUGIN_VERSION=$3
    PLUGIN_DESCRIPTION=$4

    PLUGIN_NAME=${PLUGIN_NAME//-/_}
    PLUGIN_NAME_UPPER=$(echo -n "$PLUGIN_NAME" | tr a-z A-Z)

    echo "Creating plugin $PLUGIN_NAME ($PLUGIN_URL)[$PLUGIN_VERSION]: $PLUGIN_DESCRIPTION"

    PLUGIN_DIR=package/craftbeerpi-$PLUGIN_NAME/

    mkdir -p $PLUGIN_DIR

    cat << EOF > $PLUGIN_DIR/Config.in
config BR2_PACKAGE_CRAFTBEERPI_${PLUGIN_NAME_UPPER}
    bool "craftbeerpi_${PLUGIN_NAME}"
    depends on BR2_PACKAGE_CRAFTBEERPI
    help
    CraftBeerPi Plugin: ${PLUGIN_DESCRIPTION}
EOF

    PLUGIN_URL_NO_PROTO=${PLUGIN_URL:7}
    OIFS=$IFS
    IFS='/'
    read -a PLUGIN_URL_PARTS <<< "$PLUGIN_URL_NO_PROTO"
    PLUGIN_REPO_USER=${PLUGIN_URL_PARTS[2]}
    PLUGIN_REPO_NAME=${PLUGIN_URL_PARTS[3]}
    IFS=$OIFS

    cat << EOF > $PLUGIN_DIR/craftbeerpi-$PLUGIN_NAME.mk
CRAFTBEERPI_${PLUGIN_NAME_UPPER}_VERSION = ${PLUGIN_VERSION}
CRAFTBEERPI_${PLUGIN_NAME_UPPER}_SITE = \$(call github,${PLUGIN_REPO_USER},${PLUGIN_REPO_NAME},\$(CRAFTBEERPI_${PLUGIN_NAME_UPPER}_VERSION))
CRAFTBEERPI_${PLUGIN_NAME_UPPER}_LICENSE = GPL-3
CRAFTBEERPI_${PLUGIN_NAME_UPPER}_LICENSE_FILES = LICENSE
CRAFTBEERPI_${PLUGIN_NAME_UPPER}_SETUP_TYPE = setuptools

\$(eval \$(python-package))
EOF
    echo "Adding packages Config.in to global Config.in"
    CONFIG_LINE="source \"\$BR2_EXTERNAL_CRAFTBEERPI_PATH/${PLUGIN_DIR}Config.in\""
    grep -qxF "$CONFIG_LINE" Config.in || echo "$CONFIG_LINE" >> Config.in

}

while IFS= read -r PLUGIN; do
    echo "got line ${PLUGIN}"
    name=$(echo "$PLUGIN" | yq e '.name' -)
    url=$(echo "$PLUGIN" | yq e '.url' -)
    version=$(echo "$PLUGIN" | yq e '.version' -)
    description=$(echo "$PLUGIN" | yq e '.description' -)
    create_plugin $name $url $version "$description"
done < <(yq -o=j -I=0 eval '.plugins[]' "plugins.yml")
