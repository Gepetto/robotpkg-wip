# robotpkg Makefile for:	wip/dynamic-graph-bridge
#

VERSION=		3.0.2
DISTNAME=		dynamic_graph_bridge-v3-${VERSION}
PKGNAME=		dynamic-graph-bridge-v3-${VERSION}
PKGREVISION=		2

CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=dynamic-graph-bridge-v3/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}stack-of-tasks/dynamic_graph_bridge/

COMMENT=		This ROS package binds together the ROS framework with the dynamic-graph real-time control architecture.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		hpp@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/doxygen-html

# disable -Werror because of x86_64 warnings (must be fixed upstream) and
# boost + gcc that don't cohabit well depending on their respective versions
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

# man pages location
CMAKE_ARGS+=		-DMANDIR=${PREFIX}/${PKGMANDIR}
# library location
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

include ../../sysutils/ros-rospack/depend.mk
include ../../motion/dynamic-graph-bridge-msgs/depend.mk
include ../../devel/ros-realtime-tools/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../simulation/bullet/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/sot-dynamic-pinocchio-v3/depend.mk
include ../../simulation/bullet/depend.mk
include ../../devel/ros-roscpp-core/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk

