# robotpkg Makefile for:	optimization/py38-pycddlib
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

ORG=			mcmtroffaes
NAME=			pycddlib
PYPI_PATH=		07/a3/7aac68a1b1d4ae41262049c43e125076e59176b4016ac923037a0a7d87b1/
VERSION=		2.1.1
DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
MASTER_SITES=		https://files.pythonhosted.org/packages/${PYPI_PATH}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

CATEGORIES=		optimization
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
COMMENT=		Python wrapper for Komei Fukuda's cddlib
LICENSE=		gnu-gpl-v2
MAINTAINER=		gsaurel@laas.fr

PYDISTUTILSPKG=		yes
MAKE_ENV+=		PYTHONPATH=${PREFIX}/${PYTHON_SITELIB}

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-cython.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
