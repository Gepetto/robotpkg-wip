# robotpkg Makefile for:	wip/libpointmatcher
# Created:			Pierrick Koch on Thu, 27 Mar 2014
#

ORG=			ethz-asl
NAME=			libpointmatcher
VERSION=		1.3.1

DISTNAME=		${VERSION}
PKGNAME=		${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${NAME}-${VERSION}

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

CATEGORIES=		wip
COMMENT=		An Iterative Closest Point library for 2-D/3-D mapping in Robotics

LICENSE=		2-clause-bsd
MAINTAINER=		gsaurel@laas.fr

USE_BOOST_LIBS=		thread filesystem system program_options date_time chrono

CMAKE_ARGS+=		-DGENERATE_API_DOC=ON

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../wip/libnabo/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen3/depend.mk

include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++11.mk
include ../../mk/robotpkg.mk
