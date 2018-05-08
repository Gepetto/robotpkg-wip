# robotpkg depend.mk for:	wip/hey5-description
# Created:			Olivier Stasse on Thu, 30 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
HEY5_DESCRIPTION_DEPEND_MK:=	${HEY5_DESCRIPTION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			hey5-description
endif

ifeq (+,$(HEY5_DESCRIPTION_DEPEND_MK)) # ---------------------------------

PREFER.hey5-description?=	robotpkg

DEPEND_USE+=			hey5-description

DEPEND_ABI.hey5-description?=\
	hey5-description>=1.0.1
DEPEND_DIR.hey5-description?=\
	../../wip/hey5-description

SYSTEM_SEARCH.hey5-description=\
  'include/hey5_description/hey5_description.h'	\
  'share/hey5_description/cmake/hey5_descriptionConfig.cmake' \
  'share/hey5_description/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/hey5_description.pc:/Version/s/[^0-9.]//gp'

endif # HEY5_DESCRIPTION_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
