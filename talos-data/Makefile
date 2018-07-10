# robotpkg Makefile for:	wip/talos-data
# Created:			Olivier Stasse, on Tue. 9th May, 2017
#
VERSION=	0.0.17
PKGNAME=	talos-data-${VERSION}
DISTNAME=	$(subst -,_,${PKGBASE})-${VERSION}
PKGREVISION=	3

MASTER_SITES=		ftp://${JRL_FTP_USER}${JRL_FTP_PASSWD:%=:%}@softs.laas.fr/talos/talos_data/
MASTER_REPOSITORY=	https://redmine.laas.fr/laas/users/
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		This packages provides data of the humanoid robot Pyrene in a friendly way for the SoT.
LICENSE=		pal-license
MAINTAINER=		ostasse@laas.fr

RESTRICTED=     Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=  ${RESTRICTED}
NO_PUBLIC_BIN=  ${RESTRICTED}

CMAKE_PREFIX_PATH+= ${PREFIX}

include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../lang/ros-message-generation/depend.mk
include ../../lang/ros-message-runtime/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

