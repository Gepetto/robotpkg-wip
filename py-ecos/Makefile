# robotpkg Makefile for:	optimization/py38-ecos
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

ORG=			embotech
NAME=			ecos
PYPI_PATH=		b9/3a/59aa93b573a22fda44402383aeddcc2a081c31e61080af3da9d11855c77a/
VERSION=		2.0.7.post1
DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
MASTER_SITES=		https://files.pythonhosted.org/packages/${PYPI_PATH}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

CATEGORIES=		optimization
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
COMMENT=		A lightweight conic solver for second-order cone programming.
LICENSE=		gnu-gpl-v3
MAINTAINER=		gsaurel@laas.fr

PYDISTUTILSPKG=		yes
MAKE_ENV+=		PYTHONPATH=${PREFIX}/${PYTHON_SITELIB}

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-numpy.mk
include ../../mk/sysdep/py-scipy.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
