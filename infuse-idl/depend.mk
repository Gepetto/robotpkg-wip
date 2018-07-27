# robotpkg depend.mk for:	interfaces/infuse-idl
# Created:			Ellon Paiva Mendes on Fri,  27 Jul 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
INFUSE_IDL_DEPEND_MK:=	${INFUSE_IDL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		infuse-idl
endif

ifeq (+,$(INFUSE_IDL_DEPEND_MK)) # -------------------------------------

DEPEND_USE+=		infuse-idl
PREFER.infuse-idl?=	robotpkg

SYSTEM_SEARCH.infuse-idl=\
	'share/idl/infuse/asn1/bitstream.gen'			\
	'lib/pkgconfig/infuse-idl.pc:/Version/s/[^0-9.]//gp'

DEPEND_ABI.infuse-idl?=	infuse-idl>=0.1
DEPEND_DIR.infuse-idl?=	../../wip/infuse-idl

endif # INFUSE_IDL_DEPEND_MK -------------------------------------------

DEPEND_DEPTH:=			${DEPEND_DEPTH:+=}
