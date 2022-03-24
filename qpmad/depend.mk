# robotpkg depend.mk for:	wip/qpmad
# Created:			Guilhem Saurel on Thu, 24 Mar 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
QPMAD_DEPEND_MK:=		${QPMAD_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			qpmad
endif

ifeq (+,$(QPMAD_DEPEND_MK)) # ------------------------------------------

PREFER.qpmad?=			robotpkg

#TODO
SYSTEM_SEARCH.qpmad=\
  'include/qpmad/config.h'			\
  'share/qpmad/cmake/qpmadConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'

DEPEND_USE+=			qpmad

DEPEND_ABI.qpmad?=		qpmad>=1.1.1
DEPEND_DIR.qpmad?=		../../wip/qpmad

endif # QPMAD_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
