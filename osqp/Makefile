# robotpkg Makefile for:	optimization/osqp
# Created:			Guilhem Saurel on Wed,  2 Dec 2020
#

ORG=			oxfordcontrol
NAME=			osqp
VERSION=		0.6.0

DISTNAME=		${NAME}-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

CATEGORIES=		optimization
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
COMMENT=		The Operator Splitting QP Solver
LICENSE=		apache-2.0
MAINTAINER=		gsaurel@laas.fr

USE_BOOST_LIBS=		unit_test_framework

CMAKE_ARGS+=		-DDLONG=OFF

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
