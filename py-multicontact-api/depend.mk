# robotpkg depend.mk for:	wip/py-multicontact-api
# Created:			Guilhem Saurel on Thu, 28 Mar 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_MULTICONTACT_API_DEPEND_MK:=	${PY_MULTICONTACT_API_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-multicontact-api
endif

ifeq (+,$(PY_MULTICONTACT_API_DEPEND_MK)) # ------------------------------------------

PREFER.py-multicontact-api?=	robotpkg

SYSTEM_SEARCH.py-multicontact-api=\
  'include/multicontact-api/config.hh:/MULTICONTACT_API_VERSION/s/[^0-9.]//gp'	\
  'lib/pkgconfig/multicontact-api.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=				py-multicontact-api

DEPEND_ABI.py-multicontact-api?=		py-multicontact-api>=1.0.0
DEPEND_DIR.py-multicontact-api?=		../../wip/py-multicontact-api

endif # PY_MULTICONTACT_API_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
