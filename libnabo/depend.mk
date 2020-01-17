# robotpkg depend.mk for:	wip/libnabo
# Created:			Guilhem Saurel on Fri, 17 Jan 2020
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBNABO_DEPEND_MK:=	${LIBNABO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libnabo
endif

ifeq (+,$(LIBNABO_DEPEND_MK)) # --------------------------------------

PREFER.libnabo?=	robotpkg

DEPEND_USE+=		libnabo

DEPEND_ABI.libnabo?=	libnabo>=1.0.7
DEPEND_DIR.libnabo?=	../../wip/libnabo

SYSTEM_SEARCH.libnabo=\
  'include/nabo/nabo.h:/NABO_VERSION /s/[^0-9.]//gp'					\
  'lib/libnabo.so'									\
  'share/libnabo/cmake/libnaboConfigVersion.cmake:/PACKAGE_VERSION /s/[^0-9.]//gp'	\
  'share/libnabo/package.xml:/<version>/s/[^0-9.]//gp'

endif # LIBNABO_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
