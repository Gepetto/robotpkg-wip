# robotpkg Makefile for:	wip/py38-dill
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

ORG=			uqfoundation
NAME=			dill
PYPI_PATH=		c7/11/345f3173809cea7f1a193bfbf02403fff250a3360e0e118a1630985e547d/
VERSION=		0.3.1.1
DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
MASTER_SITES=		https://files.pythonhosted.org/packages/${PYPI_PATH}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

CATEGORIES=		wip
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
COMMENT=		serialize all of python
LICENSE=		modified-bsd
MAINTAINER=		gsaurel@laas.fr

PYDISTUTILSPKG=		yes
MAKE_ENV+=		PYTHONPATH=${PREFIX}/${PYTHON_SITELIB}
PYTHON_SELF_CONFLICT=	yes

include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
