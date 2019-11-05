# robotpkg Makefile for:	wip/py-hpp-rbprm
# Created:			Guilhem Saurel on Wed, 30 Jan 2019
#

HPP_PACKAGE=		hpp-rbprm
HPP_COMMENT=		RB-PRM planner in HPP

CATEGORIES=		wip

USE_PYTHON=		true
PYTHON_NOTAG_CONFLICT=	yes

include ../../meta-pkgs/hpp/Makefile.common

include ../../wip/py-hpp-rbprm-robot-data/depend.mk
include ../../wip/py-hpp-environments/depend.mk

include ../../path/hpp-core/depend.mk
include ../../path/hpp-util/depend.mk
include ../../path/hpp-statistics/depend.mk
include ../../path/hpp-fcl/depend.mk
include ../../path/hpp-constraints/depend.mk
include ../../wip/py-hpp-bezier-com-traj/depend.mk
include ../../wip/py-hpp-centroidal-dynamics/depend.mk
include ../../wip/hpp-affordance/depend.mk
include ../../wip/hpp-spline/depend.mk
include ../../math/pinocchio/depend.mk
include ../../math/hpp-pinocchio/depend.mk
include ../../mapping/octomap/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk

include ../../mk/language/c.mk
include ../../mk/language/c++11.mk
include ../../mk/robotpkg.mk
