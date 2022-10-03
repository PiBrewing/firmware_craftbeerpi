################################################################################
#
# python-ticket-auth
#
################################################################################

PYTHON_TICKET_AUTH_VERSION = 0.1.4
PYTHON_TICKET_AUTH_SOURCE = ticket_auth-$(PYTHON_TICKET_AUTH_VERSION).tar.gz
PYTHON_TICKET_AUTH_SITE = https://files.pythonhosted.org/packages/22/53/249bc795841e1532b8d0a907ab5fee6321726513803196ca6982e40bc379
PYTHON_TICKET_AUTH_SETUP_TYPE = setuptools

$(eval $(python-package))
