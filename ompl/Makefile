# robotpkg Makefile for:	motion/ompl
# Created:			Arnaud Degroote on Wed, 24 Apr 2013
#

DISTNAME=	ompl-${PKGVERSION_NOREV}-Source
PKGVERSION=	1.4.1
PKGNAME=	ompl-${PKGVERSION}

CATEGORIES=		motion
MASTER_SITES=	https://bitbucket.org/ompl/ompl/downloads/

HOMEPAGE=	http://ompl.kavrakilab.org

COMMENT=	A library containing state-of-the-art sampling-based motion planning algorithms

LICENSE=	modified-bsd

CMAKE_ARGS+=	-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=	-DBOOST_LIBDIR=${PREFIX.boost-libs}/include
CMAKE_ARGS+= 	-DOMPL_REGISTRATION=OFF
CMAKE_ARGS+=    -DCMAKE_INSTALL_LIBDIR:PATH=${CMAKE_CONFIGURE_PREFIX}/lib

DEPEND_ABI.cmake= 		cmake>=2.8.7
DEPEND_ABI.boost-libs+=	 boost-libs>=1.54

PKG_SUPPORTED_OPTIONS+=		python
PKG_OPTION_DESCR.python=	Enable python bindings
define PKG_OPTION_SET.python
  CMAKE_ARGS+=			-DOMPL_BUILD_PYBINDINGS=ON
  CMAKE_ARGS+=          -DOMPL_BUILD_PYTESTS=ON

  include ../../mk/sysdep/python.mk
endef
define PKG_OPTION_UNSET.python
  CMAKE_ARGS+=			-DOMPL_BUILD_PYBINDINGS=OFF
  CMAKE_ARGS+=          -DOMPL_BUILD_PYTESTS=OFF
endef

PKG_SUPPORTED_OPTIONS+=		morse
PKG_OPTION_DESCR.morse=	Enable Morse add-on
define PKG_OPTION_SET.morse
  CMAKE_ARGS+=			-DOMPL_EXTENSION_MORSE=ON

  include ../../simulation/morse/depend.mk
endef
define PKG_OPTION_UNSET.morse
  CMAKE_ARGS+=			-DOMPL_EXTENSION_MORSE=OFF
endef


include ../../mk/sysdep/boost-headers.mk
include ../../mk/sysdep/boost-libs.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++11.mk
include ../../mk/robotpkg.mk
