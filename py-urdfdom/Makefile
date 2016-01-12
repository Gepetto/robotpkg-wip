# robotpkg Makefile for:	graphics/urdfdom_py
# Created:			Olivier Stasse on Fri, 19 Jun 2015
#
VERSION=		0.3.0
DISTNAME=		py-urdfdom-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=py-urdfdom/	}
#MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}laas/urdfdom_py
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}ros/urdfdom

CATEGORIES=		graphics
COMMENT=		Provides a URDF python parser
# (model copyright hold by Aldebaran Robotics) 
LICENSE=		2-clause-bsd
MAINTAINER=		hpp@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/py-urdfdom

include ../../graphics/urdfdom/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
