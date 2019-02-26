# robotpkg depend.mk for:	wip/hpp-gui
# Created:			Guilhem Saurel on Tue, 26 Feb 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_GUI_DEPEND_MK:=	${HPP_GUI_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-gui
endif

ifeq (+,$(HPP_GUI_DEPEND_MK)) # --------------------------------------

PREFER.hpp-gui?=	robotpkg

DEPEND_USE+=		hpp-gui

DEPEND_ABI.hpp-gui?=	hpp-gui>=4.3.0
DEPEND_DIR.hpp-gui?=	../../wip/hpp-gui

SYSTEM_SEARCH.hpp-gui=\
	include/hpp/gui/config.hh	\
	'lib/pkgconfig/hpp-gui.pc:/Version/s/[^0-9.]//gp'

endif # HPP_GUI_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
