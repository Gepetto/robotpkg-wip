# robotpkg depend.mk for:	wip/cppad
# Created:			Guilhem Saurel on Tue, 17 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
CPPAD_DEPEND_MK:=	${CPPAD_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		cppad
endif

ifeq (+,$(CPPAD_DEPEND_MK)) # ------------------------------------------

include ../../mk/robotpkg.prefs.mk # for OPSYS
ifeq (Arch,${OPSYS})
  PREFER.cppad?=	system
endif
PREFER.cppad?=		robotpkg

SYSTEM_SEARCH.cppad=\
  'include/cppad/configure.hpp:'	\
  'share/pkgconfig/cppad.pc:/Version  /s/[^0-9.]//gp'

SYSTEM_PKG.Debian.cppad=cppad
SYSTEM_PKG.Ubuntu.cppad=cppad
SYSTEM_PKG.Fedora.cppad=cppad-devel

DEPEND_USE+=		cppad

DEPEND_ABI.cppad?=	cppad>=20200000.2
DEPEND_DIR.cppad?=	../../wip/cppad

endif # CPPAD_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
