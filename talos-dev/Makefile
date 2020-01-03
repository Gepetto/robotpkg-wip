# robotpkg Makefile for:	wip/talos-dev
# Created:			Guilhem Saurel on Mon, 9 Oct 2017
#

TALOS_DATE=	20171009
DISTNAME=	talos-dev-${TALOS_DATE}

CATEGORIES=	meta-pkgs
COMMENT=	Talos dev Software

META_PACKAGE=	yes

include ../../interfaces/humanoid-nav-msgs/depend.mk
include ../../wip/py-sot-talos/depend.mk
include ../../wip/prf-ros-control/depend.mk

include ../../wip/sysdep/ubuntu-distro.mk
ifeq (bionic,${UBUNTUDISTRO})
  include ../../wip/prf-gazebo-ros-pkgs-melodic/depend.mk
else
  include ../../wip/prf-gazebo-ros-pkgs/depend.mk
endif

include ../../wip/talos-metapkg-ros-control-sot/depend.mk
include ../../wip/talos-simulation/depend.mk
include ../../mk/robotpkg.mk
