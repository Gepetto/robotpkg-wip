# robotpkg Makefile for:	wip/rqt_dynamic_graph
# Created:			Olivier Stasse on Fri,  2 Mar 2018
#

DISTNAME=		rqt_dynamic_graph-${VERSION}
VERSION=		1.0.0

CATEGORIES=		graphics
ROS_COMMENT=		Qt-based widget for python interpreter of dynamic_graph

PKGNAME=		${PKGTAG.python-}rqt-dynamic-graph-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=rqt_dynamic_graph/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/rqt_dynamic_graph
LICENSE=		2-clause-bsd

CHECKOUT_VCS_OPTS=	--recursive

include ../../devel/ros-catkin/depend.mk
include ../../graphics/ros-rqt/depend.mk
include ../../middleware/ros-comm/depend.mk

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk

include ../../mk/robotpkg.mk
