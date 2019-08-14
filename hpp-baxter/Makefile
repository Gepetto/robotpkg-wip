# robotpkg Makefile for:	wip/hpp-baxter
# Created:			Guilhem Saurel on Mon, 28 Jan 2019
#

HPP_PACKAGE=	hpp-baxter
HPP_COMMENT=	Wrappers for Baxter robot in HPP
HPP_VERSION=	4.5.0

ROSNAME=	$(subst -,_,${HPP_PACKAGE})

CATEGORIES=	wip

DYNAMIC_PLIST_DIRS+=	share/doc/${ROSNAME}

include ../../meta-pkgs/hpp/Makefile.common
include ../../mapping/octomap/depend.mk
include ../../path/hpp-corbaserver/depend.mk

include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
