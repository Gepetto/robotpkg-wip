# robotpkg Makefile for:	robots/sot-application
# Created:			Rohan Budhiraja on Thu, 25 Aug 2016
#

VERSION=		1.1.3
DISTNAME=		sot-application-v3-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-application-v3/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}stack-of-tasks/sot-application

CATEGORIES=		robots
COMMENT=		This packages provides a generic Stack Of Tasks library for the humanoid robot Romeo.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		gepetto@laas.fr
PKG_REVISION=		1

DYNAMIC_PLIST_DIRS+=	share/doc/sot-application

include ../../wip/sot-dynamic-pinocchio-v3/depend.mk
include ../../wip/sot-dyninv-v3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
