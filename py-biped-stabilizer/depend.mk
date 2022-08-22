# robotpkg depend.mk for:	wip/py38-biped-stabilizer
# Created:			Guilhem Saurel on Mon, 22 Aug 2022
#

DEPEND_DEPTH:=				${DEPEND_DEPTH}+
PY_BIPED_STABILIZER_DEPEND_MK:=		${PY_BIPED_STABILIZER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=				py-biped-stabilizer
endif

ifeq (+,$(BIPED_STABILIZER_DEPEND_MK)) # ------------------------------------------

PREFER.py-biped-stabilizer?=		robotpkg

SYSTEM_SEARCH.py-biped-stabilizer=						\
  '${PYTHON_SYSLIBSEARCH}/biped_stabilizer/biped_stabilizer_cpp.{,*.}so'	\
  '${PYTHON_SYSLIBSEARCH}/biped_stabilizer/__init__.py'

DEPEND_USE+=				py-biped-stabilizer

DEPEND_ABI.py-biped-stabilizer?=	${PKGTAG.python-}biped-stabilizer>=1.0.0
DEPEND_DIR.py-biped-stabilizer?=	../../wip/py-biped-stabilizer

endif # PY_BIPED_STABILIZER_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
