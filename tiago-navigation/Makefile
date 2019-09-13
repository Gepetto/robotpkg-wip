# robotpkg Makefile for:	wip/tiago-navigation
# Created:			Olivier Stasse on Tue, 8 May 2018
#

ORG=		pal-robotics
VERSION=	2.0.0
PKGBASE=	tiago-navigation
DISTNAME=	${VERSION}
PKGNAME=	${PKGBASE}-${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}


CATEGORIES=	wip
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

HOMEPAGE=	${MASTER_SITE_GITHUB:=${ORG}/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
COMMENT=	TiaGo navigation metapackage
LICENSE=	2-clause-bsd


ROS_METAPKG=	yes
USE_BOOST_LIBS=	thread

# Other rospackages needed:
# ros-kinetic-carrot-plaln
# ros-kinetic-fake-localization
# ros-kinetic-gmapping
# ros-kinetic-eband-local-planner
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../wip/pal-navigation-sm/depend.mk
include ../../wip/pmb2-navigation/depend.mk
include ../../wip/rviz-plugin-covariance/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
