# robotpkg Makefile for:	wip/hpp-environments
# Created:			Guilhem Saurel on Fri, 10 Oct 2018
#

HPP_PACKAGE=	hpp-romeo
HPP_COMMENT=	Python and ros launch files for Romeo robot in hpp.

ROSNAME=	$(subst -,_,${HPP_PACKAGE})
DISTNAME=	${ROSNAME}-${HPP_VERSION}

CATEGORIES=	wip

DYNAMIC_PLIST_DIRS+=	share/doc/${ROSNAME}

include ../../meta-pkgs/hpp/Makefile.common
include ../../math/hpp-pinocchio/depend.mk
include ../../path/hpp-corbaserver/depend.mk
include ../../path/hpp-constraints/depend.mk
include ../../path/hpp-core/depend.mk

include ../../robots/romeo-description/depend.mk
include ../../middleware/omniORB/depend.mk

include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
