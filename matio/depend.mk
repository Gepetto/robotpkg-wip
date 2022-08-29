# robotpkg depend.mk for:	math/matio
# Created:			Guilhem Saurel on Mon, 29 Aug 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
MATIO_DEPEND_MK:=		${MATIO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			matio
endif

ifeq (+,$(MATIO_DEPEND_MK)) # ------------------------------------------

# TODO: system is available, we just need to install it on the buildfarm
PREFER.matio?=			robotpkg

SYSTEM_SEARCH.matio=\
  'bin/matdump'								\
  'include/matio_pubconf.h:/MATIO_VERSION_STR /s/[^0-9.]//gp'		\
  'lib/libmatio.so'

DEPEND_USE+=			matio

DEPEND_ABI.matio?=		matio>=1.5.17
DEPEND_DIR.matio?=		../../wip/matio

SYSTEM_PKG.Arch.matio=		libmatio
SYSTEM_PKG.Debian.matio=	libmatio-dev

endif # MATIO_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
