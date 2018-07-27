# robotpkg Makefile for:	wip/sot-torque-control
# Created:			Olivier Stasse on Wed Feb 21 18:07:40 CET 2018
#

ORG=				stack-of-tasks
NAME=				sot-torque-control
VERSION=			1.0.0
PKGREVISION=		3

DISTNAME=			${NAME}-${VERSION}
PKGNAME=			${PKGTAG.python-}${DISTNAME}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS=	--recursive


MAINTAINER=			gepetto@laas.fr
CATEGORIES=			wip
COMMENT=			Torque control for humanoids
LICENSE=			2-clause-bsd

CMAKE_ARGS+=		-DBUILD_PYTHON_INTERFACE=ON
WRKSRC=		${WRKDIR}/${DISTNAME:a=}

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
#include ../../wip/py-sot-core-v3/depend.mk TODO
include ../../wip/tsid/depend.mk
#include ../../wip/py-tsid/depend.mk TODO
include ../../wip/parametric-curves/depend.mk
include ../../wip/py-parametric-curves/depend.mk
include ../../wip/simple-humanoid-description/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/py-sphinx.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
