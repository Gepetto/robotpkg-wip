# robotpkg depend.mk for:	wip/multicontact-api
# Created:			Guilhem Saurel on Thu, 28 Mar 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MULTICONTACT_API_DEPEND_MK:=	${MULTICONTACT_API_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		multicontact-api
endif

ifeq (+,$(MULTICONTACT_API_DEPEND_MK)) # ------------------------------------------

PREFER.multicontact-api?=	robotpkg

SYSTEM_SEARCH.multicontact-api=\
  'include/multicontact-api/config.hh:/MULTICONTACT_API_VERSION/s/[^0-9.]//gp'	\
  'lib/pkgconfig/multicontact-api.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=				multicontact-api

DEPEND_ABI.multicontact-api?=		multicontact-api>=1.0.0
DEPEND_DIR.multicontact-api?=		../../wip/multicontact-api

endif # MULTICONTACT_API_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
