# robotpkg Makefile for:	optimization/py38-osqp
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

ORG=			oxfordcontrol
NAME=			osqp
PYPI_PATH=		ba/17/49790ce2ce7a6b95cd250642ebc68bd723ddefdd052ee8dcc1e0dcf4ffca/
VERSION=		0.6.1
DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
MASTER_SITES=		https://files.pythonhosted.org/packages/${PYPI_PATH}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

CATEGORIES=		optimization
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
COMMENT=		The Operator Splitting QP Solver
LICENSE=		apache-2.0
MAINTAINER=		gsaurel@laas.fr

PYDISTUTILSPKG=		yes
PYSETUPINSTALLARGS+=	--single-version-externally-managed --root=/
MAKE_ENV+=		PYTHONPATH=${PREFIX}/${PYTHON_SITELIB}
PYTHON_SELF_CONFLICT=	yes

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-numpy.mk
include ../../mk/sysdep/py-scipy.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
