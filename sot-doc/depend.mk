# robotpkg depend.mk for:	wip/sot-doc
# Created:			Guilhem Saurel on Fri, 12 Feb 2021
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
SOT_DOC_DEPEND_MK:=		${SOT_DOC_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			sot-doc
endif

ifeq (+,$(SOT_DOC_DEPEND_MK)) # ------------------------------------------

PREFER.sot-doc?=		robotpkg

SYSTEM_SEARCH.sot-doc=									\
  'include/example/adder/config.hh:/SOT_DOC_VERSION /s/[^0-9.]//gp'			\
  'lib/cmake/sot-doc/sot-docConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'		\
  'lib/libsot-doc.so'									\
  'lib/pkgconfig/sot-doc.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=			sot-doc

DEPEND_ABI.sot-doc?=		sot-doc>=1.0.0
DEPEND_DIR.sot-doc?=		../../wip/sot-doc

endif # SOT_DOC_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=			${DEPEND_DEPTH:+=}
