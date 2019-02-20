# robotpkg Makefile for:	wip/example-robot-data
# Created:			Guilhem Saurel on Wed, 20 Feb 2019
#

ORG=			gepetto
NAME=			example-robot-data
VERSION=		0.1.0

DISTNAME=		${NAME}-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	git https://gepgitlab.laas.fr/${ORG}/${NAME}.git
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		Set of robot URDFs for benchmarking and developed examples.

LICENSE=		2-clause-bsd
MAINTAINER=		gepetto@laas.fr

CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

DYNAMIC_PLIST_DIRS+=	share/doc/${NAME}

include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
