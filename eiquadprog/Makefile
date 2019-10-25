# robotpkg Makefile for:	wip/eiquadprog
# Created:			Guilhem Saurel on Tue, 17 Sep 2019
#

ORG=			stack-of-tasks
NAME=			eiquadprog
VERSION=		1.0.0

CATEGORIES=		wip
COMMENT=		algorithm of Goldfarb and Idnani for the solution of a QP
LICENSE=		gnu-lgpl-v3
MAINTAINER=		gsaurel@laas.fr

DEPEND_ABI.cmake+=	cmake>=3.0.0
DEPEND_ABI.eigen3+=	eigen3>=3.2.92

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
