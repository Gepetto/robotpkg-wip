# robotpkg Makefile for:	wip/casadi
# Created:			Guilhem Saurel on Wed, 7 Aug 2019
#

ORG=			casadi
NAME=			casadi
VERSION=		3.4.5

DISTNAME=		${NAME}-${VERSION}

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
MASTER_SITES=		${HOMEPAGE}/archive/${VERSION}/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		Build efficient optimal control software, with minimal effort.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		gsaurel@laas.fr

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
