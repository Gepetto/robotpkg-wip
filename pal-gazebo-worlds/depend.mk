# robotpkg depend.mk for:	wip/pal-gazebo-worlds
# Created:			Guilhem Saurel on fri, 13 Apr 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PAL_GAZEBO_WORLDS_DEPEND_MK:=	${PAL_GAZEBO_WORLDS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pal-gazebo-worlds
endif

ifeq (+,$(PAL_GAZEBO_WORLDS_DEPEND_MK)) # ---------------------------------

PREFER.pal-gazebo-worlds?=	robotpkg

SYSTEM_SEARCH.pal-gazebo-worlds=\
    'lib/pkgconfig/pal_gazebo_worlds.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=			pal-gazebo-worlds

DEPEND_ABI.pal-gazebo-worlds?=\
	pal-gazebo-worlds>=2.0.8
DEPEND_DIR.pal-gazebo-worlds?=\
	../../wip/pal-gazebo-worlds

endif # PAL_GAZEBO_WORLDS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
