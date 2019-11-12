# robotpkg Makefile for:	wip/py-hpp-centroidal-dynamics
# Created:			Guilhem Saurel on Thu, 3 Jan 2019
#

HPP_PACKAGE=		hpp-centroidal-dynamics
HPP_COMMENT=		testing equilibrium

CATEGORIES=		wip

USE_BOOST_LIBS=		python
PYTHON_NOTAG_CONFLICT=	yes

include ../../meta-pkgs/hpp/Makefile.common

include ../../math/py-eigenpy/depend.mk
include ../../math/eigen3/depend.mk
include ../../optimization/qpoases/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk

include ../../wip/mk/sysdep/libcdd.mk
include ../../mk/language/c.mk
include ../../mk/language/c++11.mk
include ../../mk/robotpkg.mk
