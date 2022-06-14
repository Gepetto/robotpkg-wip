# robotpkg Makefile for:	wip/py38-sobec
# Created:			Guilhem Saurel on Thu, 19 May 2022
#

ORG=			memory-of-motion
NAME=			sobec
VERSION=		1.1.0
PKGREVISION=		2

PKGNAME=		${PKGTAG.python-}${DISTNAME}

CATEGORIES=		wip
COMMENT=		Sandbox Optimal Biped-Explicit Control
LICENSE=		2-clause-bsd
MAINTAINER=		gsaurel@laas.fr

USE_BOOST_LIBS=		unit_test_framework python

include ../../devel/jrl-cmakemodules/Makefile.common

include ../../wip/py-bullet3/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../math/ndcurves/depend.mk
include ../../math/py-ndcurves/depend.mk
include ../../optimization/py-crocoddyl/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-matplotlib.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
