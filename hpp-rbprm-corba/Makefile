# robotpkg Makefile for:	wip/hpp-rbprm-corba
# Created:			Guilhem Saurel on Wed, 30 Jan 2019
#

HPP_PACKAGE=		hpp-rbprm-corba
HPP_COMMENT=		Corba server for RB-PRM
PKGREVISION=		1

CATEGORIES=		wip

DEPEND_ABI.octomap=	octomap>=1.8.0

MAKE_JOBS_SAFE=	no # because multiple parallel omniidl won't work

CONFIGURE_DIRS=		build
CMAKE_ARG_PATH=		..

USE_PYTHON=		true

include ../../meta-pkgs/hpp/Makefile.common

include ../../wip/hpp-rbprm/depend.mk
include ../../wip/hpp-affordance-corba/depend.mk

include ../../math/eigen3/depend.mk
include ../../path/hpp-core/depend.mk
include ../../path/hpp-corbaserver/depend.mk
include ../../path/hpp-util/depend.mk
include ../../mapping/octomap/depend.mk

include ../../middleware/omniORB/depend.mk
include ../../middleware/py-omniORBpy/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

pre-configure:
	${RUN}${MKDIR} ${WRKSRC}/build
