# robotpkg Makefile for:	wip/pal-gazebo-worlds
# Created:			Guilhem Saurel on Fri, 13 Apr 2018
#

ORG=			pal-robotics
NAME=			pal-gazebo-worlds
VERSION=		2.0.36

ROSNAME=		$(subst -,_,${NAME})

PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DISTNAME=		${VERSION}
DIST_SUBDIR=		${NAME}

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${ROSNAME}.git
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=		${HOMEPAGE}/archive/

COMMENT=		Simulation worlds for PAL robots
LICENSE=		gnu-lgpl-v3

ifneq (,$(filter 16.04,${OS_VERSION}))
  include ../../wip/prf-gazebo-ros-pkgs/depend.mk
else
  include ../../wip/prf-gazebo-ros-pkgs-melodic/depend.mk
endif

include ../../devel/ros-catkin/depend.mk
include ../../devel/ros-roscpp-core/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
