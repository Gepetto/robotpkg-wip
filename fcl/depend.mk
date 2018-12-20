# robotpkg depend.mk for:	wip/fcl
# Created:			Guilhem Saurel on Tue, 17 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
FCL_DEPEND_MK:=	${FCL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		fcl
endif

ifeq (+,$(FCL_DEPEND_MK)) # ------------------------------------------

PREFER.fcl?=	robotpkg

SYSTEM_SEARCH.fcl=\
  'include/fcl/octree.h:'	\
  'lib/pkgconfig/fcl.pc:/Version  /s/[^0-9.]//gp'



DEPEND_USE+=		fcl

DEPEND_ABI.fcl?=	fcl>=0.3.2
DEPEND_DIR.fcl?=	../../wip/fcl

SYSTEM_PKG.Arch.fcl=	fcl (AUR)
SYSTEM_PKG.Debian.fcl=	libfcl-dev
SYSTEM_PKG.Fedora.fcl=	fcl-devel
SYSTEM_PKG.Ubuntu.fcl=	libfcl-dev

endif # FCL_DEPEND_MK ------------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
