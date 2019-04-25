# robotpkg Makefile for:	wip/py-skeleton-model
# Created:			Guilhem Saurel on Thu, 25 Apr 2019
#

ORG=			gepetto
NAME=			skeleton-model
VERSION=		1.0.1

PY_NAME=		$(subst -,_,${NAME})
DISTNAME=		${PY_NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${DISTNAME}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/${ORG}/${NAME}.git

CATEGORIES=		wip
COMMENT=		Some biomechanical and robotic models
LICENSE=		gnu-lgpl-v3

DEPEND_ABI.python+=	python<3
PYDISTUTILSPKG=		yes
NO_CONFIGURE=		yes

MAKE_ENV+=		PYTHONPATH=$(call quote,${PREFIX}/${PYTHON_SITELIB})

include ../../mk/sysdep/py-setuptools.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
