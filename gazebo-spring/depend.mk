# robotpkg depend.mk for:	wip/gazebo-spring
# Created:			Guilhem Saurel on Thu, 19 Nov 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
GAZEBO_SPRING_DEPEND_MK:=	${GAZEBO_SPRING_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			gazebo-string
endif

ifeq (+,$(GAZEBO_SPRING_DEPEND_MK)) # ------------------------------------------

PREFER.gazebo-string?=		robotpkg

SYSTEM_SEARCH.gazebo-string=									\
  'include/gazebo/spring/config.hh:/GAZEBO_SPRING_VERSION /s/[^0-9.]//gp'			\
  'lib/cmake/gazebo-string/gazebo-stringConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/libgazebo-string.so'									\
  'lib/pkgconfig/gazebo-string.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=			gazebo-string

DEPEND_ABI.gazebo-string?=	gazebo-string>=1.0.0
DEPEND_DIR.gazebo-string?=	../../wip/gazebo-string

endif # GAZEBO_SPRING_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
