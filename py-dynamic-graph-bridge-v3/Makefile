# robotpkg Makefile for:	wip/dynamic-graph-bridge-v3
#

ORG=			stack-of-tasks
NAME=			dynamic-graph-bridge
VERSION=		3.3.0

ROSNAME=		$(subst -,_,${NAME})
DISTNAME=		${ROSNAME}-v3-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-v3-${VERSION}

CATEGORIES=		wip
COMMENT=		This ROS package binds together the ROS framework with the dynamic-graph real-time control architecture.
LICENSE=		2-clause-bsd
MAINTAINER=		gepetto-soft@laas.fr

CONFLICTS+=		${ROSNAME}
CONFLICTS+=		py[0-9][0-9]-${ROSNAME}

CMAKE_ARGS+=		-DINSTALL_DOCUMENTATION=OFF
# Needed for robotpkg to install in site-packages
CMAKE_ARGS+=		-DSETUPTOOLS_DEB_LAYOUT=OFF
# Needed for dynamic_graph_bridge to be installed in site-packages
CMAKE_ARGS+=		-DPYTHON_STANDARD_LAYOUT=ON
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=ON

DYNAMIC_PLIST_DIRS+=	share/doc/doxygen-html
DYNAMIC_PLIST_DIRS+=	share/gennodejs/ros/${ROSNAME}
DYNAMIC_PLIST_DIRS+=	share/roseus/ros/${ROSNAME}
DYNAMIC_PLIST_DIRS+=	share/commonlisp/ros/${ROSNAME}

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-realtime-tools/depend.mk
include ../../devel/ros-roscpp-core/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../math/ros-geometry2/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../motion/dynamic-graph-bridge-msgs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../sysutils/ros-rospack/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../mk/sysdep/bullet.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
