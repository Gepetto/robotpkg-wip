# robotpkg Makefile for:	optimization/py38-cvxpy
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

ORG=			cvxgrp
NAME=			cvxpy
PYPI_PATH=		11/d0/d900870dc2d02ea74961b90c353666c6528a33ea61a10aa59a0d5574ae59/
VERSION=		1.0.31
DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
MASTER_SITES=		https://files.pythonhosted.org/packages/${PYPI_PATH}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

CATEGORIES=		optimization
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
COMMENT=		A domain-specific language for modeling convex optimization problems in Python.
LICENSE=		apache-2.0
MAINTAINER=		gsaurel@laas.fr

PYDISTUTILSPKG=		yes
MAKE_ENV+=		PYTHONPATH=${PREFIX}/${PYTHON_SITELIB}

include ../../wip/py-ecos/depend.mk
include ../../wip/py-multiprocess/depend.mk
include ../../wip/py-osqp/depend.mk
include ../../wip/py-scs/depend.mk

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-numpy.mk
include ../../mk/sysdep/py-scipy.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
