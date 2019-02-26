# robotpkg Makefile for:	wip/hpp-gui
# Created:			Guilhem Saurel on Tue, 26 Feb 2019
#

HPP_PACKAGE=	hpp-gui
HPP_COMMENT=	Graphical interface for HPP

CATEGORIES=		wip

CONFLICTS+=		qt[0-9]-hpp-gui-[0-9]*

CMAKE_ARGS+=\
  -DUSE_QT4=$(if $(filter qt4,${PKG_ALTERNATIVE.qt}),TRUE,FALSE)

DEPEND_ABI.python=	python<3

include ../../meta-pkgs/hpp/Makefile.common

include ../../graphics/gepetto-viewer-corba/depend.mk
include ../../path/hpp-corbaserver/depend.mk
include ../../path/hpp-manipulation-corba/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/qt.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
