# robotpkg depend.mk for:	wip/py-tsid
# Created:			Guilhem Saurel on Mon, 4 Mar 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_TSID_DEPEND_MK:=	${PY_TSID_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-tsid
endif

ifeq (+,$(PY_TSID_DEPEND_MK)) # ------------------------------------------

PREFER.py-tsid?=	robotpkg

SYSTEM_SEARCH.py-tsid=\
	'${PYTHON_SYSLIBSEARCH}/tsid/__init__.py'

DEPEND_USE+=		py-tsid

DEPEND_ABI.py-tsid?=	${PKGTAG.python-}tsid>=1.0.0
DEPEND_DIR.py-tsid?=	../../wip/py-tsid

endif # PY_TSID_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
