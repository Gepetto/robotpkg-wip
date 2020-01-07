# robotpkg Makefile for:	wip/tiago-dev
# Created:			Olivier Stasse on Mon, 6 May 2019
#

TIAGO_DATE=	20190516
DISTNAME=	tiago-dev-${TIAGO_DATE}

CATEGORIES=	meta-pkgs
COMMENT=	Tiago dev Software

META_PACKAGE=	yes

include ../py-sot-tiago/depend.mk
include ../tiago-metapkg-ros-control-sot/depend.mk
include ../../wip/sysdep/ubuntu-distro.mk
ifeq (bionic,${UBUNTUDISTRO})
  include ../../wip/prf-gazebo-ros-pkgs-melodic/depend.mk
else
  include ../../wip/prf-gazebo-ros-pkgs/depend.mk
endif
include ../tiago-simulation/depend.mk
include ../pal-wsg-gripper/depend.mk
include ../../mk/robotpkg.mk
