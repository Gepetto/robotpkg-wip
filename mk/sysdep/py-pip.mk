# robotpkg mk/sysdep/py-pip.mk
# Created:			Guilhem Saurel, on Thu, 04 Jul 2019
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_PIP_DEPEND_MK:=	${PY_PIP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-pip
endif

ifeq (+,$(PY_PIP_DEPEND_MK)) # -------------------------------------------

PREFER.py-pip?=		system

DEPEND_USE+=		py-pip
DEPEND_ABI.py-pip?=	${PKGTAG.python-}pip>=8.1.1

SYSTEM_SEARCH.py-pip=\
	'${PYTHON_SYSLIBSEARCH}/pip/__init__.py:/^__version__ = /s/[^0-9.]//gp'

SYSTEM_PKG.Arch.py-pip=		python$(filter ${PYTHON_MAJOR},2)-pip
SYSTEM_PKG.Debian.py-pip=	python$(filter ${PYTHON_MAJOR},3)-pip
SYSTEM_PKG.Fedora.py-pip=	python${PYTHON_MAJOR}-pip

PIPSETUPINSTALLARGS+=		--prefix ${PREFIX}
PIPSETUPINSTALLARGS+=		--no-compile

BUILD_MAKE_CMD?=	${SETENV}

INSTALL_MAKE_CMD?=${SETENV} ${MAKE_ENV} \
	${PYTHON} -m pip install ${PIPSETUPINSTALLARGS} .

include ../../mk/sysdep/python.mk

endif # PY_PIP_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
