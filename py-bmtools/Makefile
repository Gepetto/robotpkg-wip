# robotpkg Makefile for:	wip/py-bmtools
# Created:			Guilhem Saurel on Fry, 19 Apr 2019
#

ORG=			gepetto
NAME=			bmtools
VERSION=		1.0.1

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${DISTNAME}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/${ORG}/${NAME}.git

CATEGORIES=		wip
COMMENT=		Biomechanic toolbox
LICENSE=		gnu-gpl-v3

DEPEND_ABI.python+=	python<3
PYDISTUTILSPKG=		yes
NO_CONFIGURE=		yes

MAKE_ENV+=		PYTHONPATH=$(call quote,${PREFIX}/${PYTHON_SITELIB})

include ../../mk/sysdep/py-setuptools.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
