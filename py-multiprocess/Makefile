# robotpkg Makefile for:	wip/py38-multiprocess
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

ORG=			uqfoundation
NAME=			multiprocess
PYPI_PATH=		58/17/5151b6ac2ac9b6276d46c33369ff814b0901872b2a0871771252f02e9192/
VERSION=		0.70.9
DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
MASTER_SITES=		https://files.pythonhosted.org/packages/${PYPI_PATH}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

CATEGORIES=		wip
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
COMMENT=		better multiprocessing and multithreading in python
LICENSE=		modified-bsd
MAINTAINER=		gsaurel@laas.fr

PYDISTUTILSPKG=		yes
PYSETUPINSTALLARGS+=	--single-version-externally-managed --root=/
MAKE_ENV+=		PYTHONPATH=${PREFIX}/${PYTHON_SITELIB}

include ../../wip/py-dill/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-numpy.mk
include ../../mk/sysdep/py-scipy.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
