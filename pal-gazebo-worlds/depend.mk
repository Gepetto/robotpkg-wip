# robotpkg depend.mk for:	wip/pal-gazebo-worlds
# Created:			Guilhem Saurel on fri, 13 Apr 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_GAZEBO_WORLDS_DEPEND_MK:=	${PAL_GAZEBO_WORLDS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-gazebo-worlds
endif

ifeq (+,$(PAL_GAZEBO_WORLDS_DEPEND_MK)) # ---------------------------------

include ../../wip/py-prf-ros-control/depend.common

PREFER.pal-gazebo-worlds?=		${PREFER.pal}
SYSTEM_PREFIX.pal-gazebo-worlds?=	${SYSTEM_PREFIX.pal}

DEPEND_USE+=			pal-gazebo-worlds

DEPEND_ABI.pal-gazebo-worlds?=	pal-gazebo-worlds>=2.0.0
DEPEND_DIR.pal-gazebo-worlds?=  ../../wip/pal-gazebo-worlds

SYSTEM_SEARCH.pal-gazebo-worlds=\
    'share/pal_gazebo_worlds/package.xml:/<version>/s/[^0-9.]//gp'	\
    'share/pal_gazebo_worlds/launch/pal_gazebo.launch'
endif # PAL_GAZEBO_WORLDS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
