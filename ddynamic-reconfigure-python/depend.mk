# robotpkg depend.mk for:	wip/ddynamic-reconfigure-python
# Created:			Olivier Stasse on Tue, 8 May 2018
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
DDYNAMIC_RECONFIGURE_PYTHON_DEPEND_MK:=	${DDYNAMIC_RECONFIGURE_PYTHON_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			ddynamic-reconfigure-python
endif

ifeq (+,$(DDYNAMIC_RECONFIGURE_PYTHON_DEPEND_MK)) # ---------------------------------

PREFER.ddynamic-reconfigure-python?=	robotpkg

DEPEND_USE+=			ddynamic-reconfigure-python

DEPEND_ABI.ddynamic-reconfigure-python?=\
	ddynamic-reconfigure-python>=0.0.1
DEPEND_DIR.ddynamic-reconfigure-python?=\
	../../wip/ddynamic-reconfigure-python

SYSTEM_SEARCH.ddynamic-reconfigure-python=\
  'share/ddynamic_reconfigure_python/cmake/ddynamic_reconfigure_pythonConfig.cmake' \
  'share/ddynamic_reconfigure_python/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/ddynamic_reconfigure_python.pc:/Version/s/[^0-9.]//gp'

endif # DDYNAMIC_RECONFIGURE_PYTHON_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
