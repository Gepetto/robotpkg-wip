# robotpkg Makefile for:	optimization/py38-pycddlib
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

ORG=			mcmtroffaes
NAME=			pycddlib
PYPI_PATH=		d6/90/9f4c63ffafa72b799de01ec8b8d68867aca144f31e559a4622c1271a6a70/
VERSION=		2.1.7
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
PYSETUPINSTALLARGS+=	--single-version-externally-managed --root=/
MAKE_ENV+=		PYTHONPATH=${PREFIX}/${PYTHON_SITELIB}

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-cython.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
