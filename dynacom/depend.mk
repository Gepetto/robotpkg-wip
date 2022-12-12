# robotpkg depend.mk for:	wip/dynacom
# Created:			Guilhem Saurel on Mon, 12 Dec 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
DYNACOM_DEPEND_MK:=		${DYNACOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			dynacom
endif

ifeq (+,$(DYNACOM_DEPEND_MK)) # ------------------------------------------

PREFER.dynacom?=		robotpkg

SYSTEM_SEARCH.dynacom=							\
  'include/dynacom/config.hh:/DYNACOM_VERSION /s/[^0-9.]//gp'			\
  'lib/cmake/dynacom/dynacomConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/libdynacom.so'							\
  'lib/pkgconfig/dynacom.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=			dynacom

DEPEND_ABI.dynacom?=		dynacom>=1.2.0
DEPEND_DIR.dynacom?=		../../wip/dynacom

endif # DYNACOM_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
