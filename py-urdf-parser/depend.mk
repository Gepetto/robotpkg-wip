# robotpkg depend.mk for:	wip/py-urdf-parser-msgs
# Created:			Guilhem Saurel on Fri, 20 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_URDF_PARSER_DEPEND_MK:=	${PY_URDF_PARSER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-urdf-parser
endif

ifeq (+,$(PY_URDF_PARSER_DEPEND_MK)) # --------------------------------------

PREFER.py-urdf-parser?=	robotpkg

DEPEND_USE+=		py-urdf-parser

DEPEND_ABI.py-urdf-parser?=	${PKGTAG.python-}urdf-parser>=0.4.0
DEPEND_DIR.py-urdf-parser?=	../../wip/py-urdf-parser

SYSTEM_SEARCH.py-urdf-parser=\
	share/urdfdom_py/package.xml	\
	'lib/pkgconfig/urdfdom_py.pc:/Version/s/[^0-9.]//gp'

CMAKE_PREFIX_PATH.py-urdf-parser=  ${PREFIX.py-urdf-parser}

endif # PY_URDF_PARSER_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
