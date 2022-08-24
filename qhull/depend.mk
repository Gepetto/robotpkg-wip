# robotpkg depend.mk for:	optimization/qhull
# Created:			Guilhem Saurel on Wed, 24 Aug 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
QHULL_DEPEND_MK:=		${QHULL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			qhull
endif

ifeq (+,$(QHULL_DEPEND_MK)) # ------------------------------------------

# Qhull v8 is available in Debian since 11, Ubuntu since 22.04, Arch, and still not in Fedora 38

include ../../mk/robotpkg.prefs.mk # for OPSYS

ifeq (Ubuntu,${OPSYS})

ifeq (22.04,${OS_VERSION})
	PREFER.qhull?=		system
else
	PREFER.qhull?=		robotpkg
endif

else ifeq (Debian,${OPSYS})

ifeq (11,${OS_VERSION})
	PREFER.qhull?=		system
else
	PREFER.qhull?=		robotpkg
endif

else ifeq (Arch,${OPSYS})

	PREFER.qhull?=		system

else
	PREFER.qhull?=		robotpkg
endif

SYSTEM_SEARCH.qhull=								\
  'include/libqhullcpp/Qhull.h'							\
  'lib/cmake/Qhull/QhullConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/libqhull_r.so'

DEPEND_USE+=			qhull

DEPEND_ABI.qhull?=		qhull>=8.0.2
DEPEND_DIR.qhull?=		../../wip/qhull

endif # QHULL_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
