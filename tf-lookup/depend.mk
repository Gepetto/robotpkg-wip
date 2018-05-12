# robotpkg depend.mk for:	wip/tf-lookup
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TF_LOOKUP_DEPEND_MK:=	${TF_LOOKUP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			tf-lookup
endif

ifeq (+,$(TF_LOOKUP_DEPEND_MK)) # ----------------------------------

PREFER.tf-lookup?=	robotpkg

DEPEND_USE+=			tf-lookup

DEPEND_ABI.tf-lookup?=	tf-lookup>=0.0.1
DEPEND_DIR.tf-lookup?=	../../wip/tf-lookup

SYSTEM_SEARCH.tf-lookup=\
  'share/tf_lookup/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/tf_lookup.pc:/Version/s/[^0-9.]//gp'  \
  'share/tf_lookup/cmake/tf_lookupConfig.cmake'

endif # TF_LOOKUP_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
