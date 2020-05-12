# robotpkg Makefile for:	optimization/py38-scs
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

ORG=			cvxgrp
NAME=			scs
PYPI_PATH=		1a/72/33be87cce255d4e9dbbfef547e9fd6ec7ee94d0d0910bb2b13badea3fbbe/
VERSION=		2.1.2
DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
MASTER_SITES=		https://files.pythonhosted.org/packages/${PYPI_PATH}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

CATEGORIES=		optimization
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
COMMENT=		scs: splitting conic solver
LICENSE=		mit
MAINTAINER=		gsaurel@laas.fr

PYDISTUTILSPKG=		yes
MAKE_ENV+=		PYTHONPATH=${PREFIX}/${PYTHON_SITELIB}

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-numpy.mk
include ../../mk/sysdep/py-scipy.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
