# robotpkg Makefile for:	wip/py36-roscontrol-sot
# Created:			Guilhem Saurel on Tue, 5 Nov 2019
#

ORG=			stack-of-tasks
VERSION=		0.6.0
NAME=			roscontrol-sot
PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
ROSNAME=		$(subst -,_,${NAME})
DISTNAME=		${ROSNAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=		${NAME}

CATEGORIES=		wip

COMMENT=		This ROS package binds together the ROS control framework with the dynamic-graph real-time control architecture.

CMAKE_ARGS+=		-DINSTALL_DOCUMENTATION=OFF

# disable -Werror because of x86_64 warnings (must be fixed upstream) and
# boost + gcc that don't cohabit well depending on their respective versions
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

# man pages location
CMAKE_ARGS+=		-DMANDIR=${PREFIX}/${PKGMANDIR}

# Allows to have robotpkg ros packages with the highest priority
# over system ros packages.
# http://wiki.ros.org/catkin/what
CMAKE_PREFIX_PATH+=	${PREFIX}
USE_PYTHON=		true

DYNAMIC_PLIST_DIRS+=	share/doc/${ROSNAME}


include ../../devel/jrl-cmakemodules/Makefile.common
include ../../sysutils/ros-rospack/depend.mk
include ../../motion/dynamic-graph-bridge-msgs/depend.mk
include ../../wip/py-dynamic-graph-bridge-v3/depend.mk
include ../../devel/ros-realtime-tools/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-control-msgs/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../motion/ros-control-toolbox/depend.mk
include ../../wip/dynamic-graph-v3/depend.mk
include ../../wip/py-dynamic-graph-v3/depend.mk
include ../../wip/sot-core-v3/depend.mk
include ../../wip/sot-dynamic-pinocchio-v3/depend.mk
include ../../math/pinocchio/depend.mk
include ../../mk/robotpkg.prefs.mk
include ../../wip/sysdep/pal-distro.mk
include ../../wip/pal-msgs/depend.mk

include ../../wip/sysdep/pal-distro.mk
ifeq (erbium,${PREFER.pal-distro})
  ifeq (palerbium,${PALDISTRO})
    CMAKE_PREFIX_PATH+=/opt/pal/erbium
    SYSTEM_PREFIX+=/opt/pal/erbium
    CXXFLAGS+="-I/opt/pal/erbium/include"
    PKG_CONFIG_DIRS=/opt/pal/erbium/lib/pkgconfig
  else
    include ../../wip/pal-hardware-interfaces/depend.mk
    include ../../wip/py-prf-ros-control/depend.mk
    include ../../wip/py-prf-ros-controllers/depend.mk
  endif
else
  include ../../wip/pal-hardware-interfaces/depend.mk
  include ../../wip/py-prf-ros-control/depend.mk
  include ../../wip/py-prf-ros-controllers/depend.mk
endif


include ../../devel/ros-roscpp-core/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/bullet.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
