# robotpkg Makefile for:	wip/py-casadi
# Created:			Guilhem Saurel on Wed, 7 Aug 2019
#

ORG=			casadi
NAME=			casadi
VERSION=		3.4.5

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}${DISTNAME}

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
MASTER_SITES=		${HOMEPAGE}/archive/${VERSION}/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}
CHECKOUT_VCS_OPTS+=	--recursive

CATEGORIES=		wip
COMMENT=		Build efficient optimal control software, with minimal effort.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		gsaurel@laas.fr

CMAKE_ARGS+=		-DPYTHON_PREFIX=${PREFIX}/${PYTHON_SITELIB}
CMAKE_ARGS+=		-DWITH_LAPACK=ON
CMAKE_ARGS+=		-DWITH_OPENMP=ON
CMAKE_ARGS+=		-DWITH_PYTHON=ON
CMAKE_ARGS+=		-DWITH_PYTHON3=$(if $(filter 3,${PYTHON_MAJOR}),ON,OFF)
CMAKE_ARGS+=		-DWITH_QPOASES=ON
CMAKE_ARGS+=		-DWITH_THREAD=ON

# ipopt option
PKG_SUPPORTED_OPTIONS+=	ipopt
PKG_OPTION_DESCR.ipopt?=Enable coin-or ipopt support

PKG_OPTION_UNSET.ipopt+=CMAKE_ARGS+=	-DWITH_IPOPT=OFF

define PKG_OPTION_SET.ipopt
  CMAKE_ARGS+=		-DWITH_IPOPT=ON
  PLIST_SRC=		${PKGDIR}/PLIST ${PKGDIR}/PLIST.ipopt
  include ../../optimization/ipopt/depend.mk
endef

#include ../../wip/mk/sysdep/sundials.mk
include ../../devel/swig/depend.mk
include ../../math/lapack/depend.mk
include ../../optimization/qpoases/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/tinyxml2.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
