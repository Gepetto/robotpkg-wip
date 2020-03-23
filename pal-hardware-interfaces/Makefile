# robotpkg Makefile for:	wip/talos-pal-hardware-interfaces
# Created:			Olivier Stasse on Thu, 30 Mar 2017
#

ORG=		pal-robotics
VERSION=	0.0.3
PKGBASE=	pal-hardware-interfaces
DISTNAME=	${VERSION}
PKGNAME=	${PKGBASE}-${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}
PKGREVISION=	2

CATEGORIES=	wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

HOMEPAGE= ${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
COMMENT=	Hardware interfaces developped by PAL-Robotics
LICENSE=	gnu-lgpl-v3


USE_BOOST_LIBS=	thread

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../wip/sysdep/pal-distro.mk

# PREFER.pal-distro gives the user the choice to compile
# over PAL packages or not.
ifeq (erbium,${PREFER.pal-distro})
  ifeq (palerbium,${PALDISTRO})
    CMAKE_PREFIX_PATH+=/opt/pal/erbium
  else
    include ../../wip/py-prf-ros-control/depend.mk
  endif
else
  include ../../wip/py-prf-ros-control/depend.mk
endif
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
