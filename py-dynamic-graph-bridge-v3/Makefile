# robotpkg Makefile for:	wip/dynamic-graph-bridge-v3
#

ORG=			stack-of-tasks
NAME=			dynamic-graph-bridge
VERSION=		3.4.0

ROSNAME=		$(subst -,_,${NAME})
DISTNAME=		${ROSNAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${NAME}-v3-${VERSION}

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git

CATEGORIES=		wip
COMMENT=		This ROS package binds together the ROS framework with the dynamic-graph real-time control architecture.

CONFLICTS+=		${ROSNAME}
CONFLICTS+=		py[0-9][0-9]-${ROSNAME}

USE_PYTHON=		true

CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=ON

DYNAMIC_PLIST_DIRS+=	share/doc/${ROSNAME}

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-realtime-tools/depend.mk
include ../../devel/ros-roscpp-core/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../math/pinocchio/depend.mk
include ../../math/py-pinocchio/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../mapping/octomap/depend.mk
include ../../path/py-hpp-fcl/depend.mk
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
