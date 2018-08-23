# robotpkg Makefile for:	wip/tsid
# Created:			Justin Carpentier on Thu, 16 June 2017
#

ORG=			stack-of-tasks
NAME=			tsid
VERSION=		1.0.2
PKGREVISION=	1

DISTNAME=		${NAME}-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		Efficient Inverse Dynamics based on Pinocchio
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=OFF

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

USE_BOOST_LIBS=		unit_test_framework

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk

DEPEND_ABI.python +=		python<3
DEPEND_ABI.pinocchio +=	pinocchio>=1.2.4
DEPEND_ABI.eigen3 += eigen3>=3.2.0

include ../../mk/robotpkg.mk
