# robotpkg depend.mk for:	wip/example-robot-data
# Created:			Guilhem Saurel on Wed, 20 Feb 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
EXAMPLE_ROBOT_DATA_DEPEND_MK:=	${EXAMPLE_ROBOT_DATA_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		example-robot-data
endif

ifeq (+,$(EXAMPLE_ROBOT_DATA_DEPEND_MK)) # ------------------------------------------

PREFER.example-robot-data?=	robotpkg

#TODO
SYSTEM_SEARCH.example-robot-data=\
  'include/example/robot/data/config.hh:/EXAMPLE_ROBOT_DATA_VERSION/s/[^0-9.]//gp'	\
  'lib/pkgconfig/example-robot-data.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		example-robot-data

DEPEND_ABI.example-robot-data?=	example-robot-data>=0.1.0
DEPEND_DIR.example-robot-data?=	../../wip/example-robot-data

endif # EXAMPLE_ROBOT_DATA_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
