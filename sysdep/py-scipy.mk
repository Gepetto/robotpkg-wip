# robotpkg/wip sysdep/py-scipy.mk
# Created:			François Magimel on July 15 2015
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_SCIPY_DEPEND_MK:=	${PY_SCIPY_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-scipy
endif

ifeq (+,$(PY_SCIPY_DEPEND_MK)) # -------------------------------------------

PREFER.py-scipy?=	system

DEPEND_USE+=		py-scipy
DEPEND_ABI.py-scipy?=	${PKGTAG.python-}scipy>=0.9.0

SYSTEM_SEARCH.py-scipy=\
  '${PYTHON_SYSLIBSEARCH}/scipy/__init__.py'				\
  '${PYTHON_SYSLIBSEARCH}/scipy/version.py:/^version/s/[^0-9.]//gp'

SYSTEM_PKG.ArchLinux.py-scipy=	math/${PKGTAG.python-}scipy
SYSTEM_PKG.Fedora.py-scipy=	python-scipy (python-${PYTHON_VERSION})
SYSTEM_PKG.Ubuntu.py-scipy=	python-scipy (python-${PYTHON_VERSION})
SYSTEM_PKG.Debian.py-scipy=	python-scipy (python-${PYTHON_VERSION})
SYSTEM_PKG.NetBSD.py-scipy=	math/${PKGTAG.python-}scipy

include ../../mk/sysdep/python.mk

endif # PY_SCIPY_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
