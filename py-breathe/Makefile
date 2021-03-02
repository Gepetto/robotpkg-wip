# robotpkg Makefile for:	wip/py39-breathe
# Created:			Guilhem Saurel on Tue,  2 Mar 2021
#

ORG=			michaeljones
NAME=			breathe
PYPI_PATH=		42/71/0e7f1aa530c4e5ec401eafbae3530afb6ef559ac39c651150e4900ce381b/
VERSION=		4.27.0
DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
MASTER_SITES=		https://files.pythonhosted.org/packages/${PYPI_PATH}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

CATEGORIES=		wip
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
COMMENT=		an extension to reStructuredText and Sphinx
LICENSE=		modified-bsd
MAINTAINER=		gsaurel@laas.fr

PYDISTUTILSPKG=		yes
PYSETUPINSTALLARGS+=	--single-version-externally-managed --root=/
MAKE_ENV+=		PYTHONPATH=${PREFIX}/${PYTHON_SITELIB}
PYTHON_SELF_CONFLICT=	yes

include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-sphinx.mk
include ../../mk/robotpkg.mk
