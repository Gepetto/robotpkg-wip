# robotpkg Makefile for:	wip/py-hpp-bezier-com-traj
# Created:			Guilhem Saurel on Fri, 4 Jan 2019
#

HPP_PACKAGE=		hpp-bezier-com-traj
HPP_COMMENT=		trajectory generation for the COM with bezier curves
HPP_VERSION=		4.10.1

CATEGORIES=		wip

USE_BOOST_LIBS=		python
PYTHON_NOTAG_CONFLICT=	yes

include ../../meta-pkgs/hpp/Makefile.common

include ../../math/curves/depend.mk
include ../../math/py-curves/depend.mk

include ../../wip/py-hpp-centroidal-dynamics/depend.mk

include ../../math/py-eigenpy/depend.mk
include ../../math/eigen3/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk

include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
