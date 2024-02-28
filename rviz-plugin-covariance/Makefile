# robotpkg Makefile for:	wip/rviz-plugin-covariance
# Created:			Olivier Stasse on Tue, 9 May 2018
#

VERSION=	0.0.6os1
PKGBASE=	rviz-plugin-covariance
DISTNAME=	${VERSION}
PKGNAME=	${PKGBASE}-${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}
PKGREVISION=	1

CATEGORIES=	wip
HOMEPAGE=	${MASTER_SITE_GITHUB:=olivier-stasse/${ROSNAME}}
COMMENT=	Plugin providing covariance display
LICENSE=	2-clause-bsd


USE_BOOST_LIBS=	thread

include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../sysutils/ros-rviz/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
