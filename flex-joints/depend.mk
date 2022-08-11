# robotpkg depend.mk for:	wip/flex-joints
# Created:			Guilhem Saurel on Fri, 24 Jun 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
FLEX_JOINTS_DEPEND_MK:=		${FLEX_JOINTS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			flex-joints
endif

ifeq (+,$(FLEX_JOINTS_DEPEND_MK)) # ------------------------------------------

PREFER.flex-joints?=		robotpkg

SYSTEM_SEARCH.flex-joints=								\
  'include/flex-joints/config.hh:/FLEX_JOINTS_VERSION /s/[^0-9.]//gp'			\
  'include/flex-joints/flexi-hips.hpp'							\
  'lib/cmake/flex-joints/flex-jointsConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/libflex-joints.so'								\
  'lib/pkgconfig/flex-joints.pc:/Version/s/[^0-9.]//gp'					\
  'share/flex-joints/package.xml:/<version>/s/[^0-9.]//gp'

DEPEND_USE+=			flex-joints

DEPEND_ABI.flex-joints?=	flex-joints>=1.0.0
DEPEND_DIR.flex-joints?=	../../wip/flex-joints

endif # FLEX_JOINTS_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
