# robotpkg wip/sysdep/fcl.mk
# Created:			Guilhem Saurel on Dec 20 2018
#
DEPEND_DEPTH:=	${DEPEND_DEPTH}+
FCL_DEPEND_MK:=	${FCL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=	fcl
endif

ifeq (+,$(FCL_DEPEND_MK)) # ------------------------------------------------

PREFER.fcl?=	system
DEPEND_USE+=	fcl
DEPEND_ABI.fcl?=fcl>=0.3.2

SYSTEM_SEARCH.fcl=	\
	'include/fcl/octree.h' \
	'lib/libfcl.so' \
	'lib/pkgconfig/fcl.pc:/^Version/s/[^0-9.]//gp'

SYSTEM_PKG.Arch.fcl=	fcl (AUR)
SYSTEM_PKG.Debian.fcl=	libfcl-dev
SYSTEM_PKG.Fedora.fcl=	fcl-devel
SYSTEM_PKG.Ubuntu.fcl=	libfcl-dev

endif # FCL_DEPEND_MK ------------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
