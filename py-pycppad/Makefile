# robotpkg Makefile for:	math/pycppad
# Created:			Guilhem Saurel on Fri, 20 Aug 2021
#

ORG=			Simple-Robotics
NAME=			pycppad
VERSION=		1.1.0
PKGREVISION=		1

CATEGORIES=		math
COMMENT=		CppAD bindings to python

PYTHON_SELF_CONFLICT=	yes

CMAKE_ARGS+=		-DBUILD_WITH_CPPAD_CODEGEN_BINDINGS=ON

USE_BOOST_LIBS=		python
Boost_PYTHON_LIBRARY=	$(filter %.so,${SYSTEM_FILES.boost-lib-python})
CMAKE_ARGS+=		-DBoost_PYTHON_LIBRARY=${Boost_PYTHON_LIBRARY}
CMAKE_ARGS+=		-DBoost_PYTHON_LIBRARY_RELEASE=${Boost_PYTHON_LIBRARY}
CMAKE_ARGS+=		-DBoost_PYTHON_LIBRARY_DEBUG=${Boost_PYTHON_LIBRARY}

USE_MASTER_GITHUB=	true

include ../../devel/jrl-cmakemodules/Makefile.common

include ../../wip/cppad/depend.mk
include ../../wip/cppadcodegen/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen3/depend.mk
include ../../math/py-eigenpy/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/py-numpy.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
