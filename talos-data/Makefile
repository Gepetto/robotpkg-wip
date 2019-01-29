# robotpkg Makefile for:	wip/talos-data
# Created:			Olivier Stasse, on Tue. 9th May, 2017
#

ORG=			pyrene-dev
NAME=			talos-data
VERSION=		0.0.21
PKGREVISION=		3

ROSNAME=		$(subst -,_,${NAME})
PKGNAME=		${NAME}-${VERSION}
DISTNAME=		${ROSNAME}-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	git git@gepgitlab.laas.fr:${ORG}/${ROSNAME}.git
CHECKOUT_VCS_OPTS+=	--recursive
LICENSE=		gnu-lgpl-v3

CATEGORIES=		wip
COMMENT=		This packages provides data of the humanoid robot Pyrene in a friendly way for the SoT.
MAINTAINER=		ostasse@laas.fr

CMAKE_PREFIX_PATH+= ${PREFIX}
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

DYNAMIC_PLIST_DIRS+=	share/doc/${ROSNAME}

include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../graphics/urdfdom/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
