# robotpkg Makefile for:	wip/hpp-centroidal-dynamics
# Created:			Guilhem Saurel on Thu, 3 Jan 2019
#

HPP_PACKAGE=	hpp-centroidal-dynamics
HPP_COMMENT=	testing equilibrium
HPP_VERSION=	4.5.1

CATEGORIES=	wip

DEPEND_ABI.python+=	python<3

USE_BOOST_LIBS=		python

include ../../meta-pkgs/hpp/Makefile.common

include ../../math/py-eigenpy/depend.mk
include ../../math/eigen3/depend.mk
include ../../optimization/qpoases/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk

include ../../wip/mk/sysdep/libcdd.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
