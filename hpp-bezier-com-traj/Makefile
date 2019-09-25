# robotpkg Makefile for:	wip/hpp-bezier-com-traj
# Created:			Guilhem Saurel on Fri, 4 Jan 2019
#

HPP_PACKAGE=	hpp-bezier-com-traj
HPP_COMMENT=	trajectory generation for the COM with bezier curves

CATEGORIES=	wip

USE_BOOST_LIBS=		python
USE_PYTHON=		true

include ../../meta-pkgs/hpp/Makefile.common

include ../../wip/hpp-spline/depend.mk
include ../../wip/hpp-centroidal-dynamics/depend.mk

include ../../math/py-eigenpy/depend.mk
include ../../math/eigen3/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk

include ../../mk/language/c.mk
include ../../mk/language/c++11.mk
include ../../mk/robotpkg.mk
