# robotpkg depend.mk for:	wip/py-pal
# Created:			Olivier Stasse on Tue, 8 May 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_PAL_DEPEND_MK:=	${PY_PAL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-pal
endif

ifeq (+,$(PY_PAL_DEPEND_MK)) # ---------------------------------

PREFER.py-pal?=	robotpkg

DEPEND_USE+=			py-pal

DEPEND_ABI.py-pal?=\
	py-pal>=0.9.14
DEPEND_DIR.py-pal?=\
	../../wip/py-pal

SYSTEM_SEARCH.py-pal=\
  'include/py_pal/py_pal.h'	\
  'share/py_pal/cmake/py_palConfig.cmake' \
  'share/py_pal/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/py_pal.pc:/Version/s/[^0-9.]//gp'

endif # PY_PAL_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
