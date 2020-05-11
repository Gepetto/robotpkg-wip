# robotpkg Makefile for:	wip/talos-dev
# Created:			Guilhem Saurel on Mon, 9 Oct 2017
#

TALOS_DATE=	20200511
DISTNAME=	talos-dev-${TALOS_DATE}
PKGNAME=	${PKGTAG.python-}${DISTNAME}

CATEGORIES=	meta-pkgs
COMMENT=	Talos dev Software

META_PACKAGE=	yes

include ../../wip/py-prf-gazebo-ros-pkgs/depend.mk

include ../../wip/py-prf-ros-control/depend.mk
include ../../wip/py-sot-talos/depend.mk
include ../../wip/py-sot-talos-balance/depend.mk
include ../../wip/py-talos-torque-control/depend.mk
#include ../../wip/ros-image-pipeline/depend.mk
include ../../wip/talos-metapkg-ros-control-sot/depend.mk
include ../../wip/talos-simulation/depend.mk

include ../../interfaces/humanoid-nav-msgs/depend.mk
include ../../localization/ros-robot-state-publisher/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
