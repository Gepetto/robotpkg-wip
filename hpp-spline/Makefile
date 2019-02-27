# robotpkg Makefile for:	wip/hpp-environments
# Created:			Guilhem Saurel on Fri, 10 Oct 2018
#

HPP_PACKAGE=	hpp-spline
HPP_COMMENT=	spline and bezier curves
HPP_VERSION=	4.3.1

CATEGORIES=	wip

DEPEND_ABI.python+=	python<3

USE_BOOST_LIBS=		python

include ../../meta-pkgs/hpp/Makefile.common

include ../../math/py-eigenpy/depend.mk
include ../../math/eigen3/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk

include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
