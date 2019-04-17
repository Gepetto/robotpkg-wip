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
	pal-python>=0.9.14os1
DEPEND_DIR.py-pal?=\
	../../wip/py-pal

SYSTEM_SEARCH.py-pal=\
  '${PYTHON_SYSLIBSEARCH}/pal_python/pal_common.py' \
  '${PYTHON_SYSLIBSEARCH}/pal_python/pal_launch.py' 

endif # PY_PAL_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
