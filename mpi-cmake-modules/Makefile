# robotpkg Makefile for:	wip/py39-mpi-cmake-modules
# Created:			Guilhem Saurel on Tue, 2 Mar 2021
#

ORG=			machines-in-motion
NAME=			mpi-cmake-modules
VERSION=		1.0.0

DIST_SUBDIR=		${NAME}
DISTNAME=		v${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}

ROSNAME=		$(subst -,_,${NAME})
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}

MASTER_SITES?=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}/archive/
MASTER_REPOSITORY?=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git

CATEGORIES=		wip
COMMENT=		list of usefull cmake macros
LICENSE=		modified-bsd
MAINTAINER=		gsaurel@laas.fr


include ../../wip/py-breathe/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
