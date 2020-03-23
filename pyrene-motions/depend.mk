# robotpkg depend.mk for:	wip/pyrene-motions
# Created:			Guilhem Saurel on Mon, 16 Mar 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PYRENE_MOTIONS_DEPEND_MK:=	${PYRENE_MOTIONS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			pyrene-motions
endif

ifeq (+,$(PYRENE_MOTIONS_DEPEND_MK)) # -----------------------------------------

PREFER.pyrene-motions?=		robotpkg

SYSTEM_SEARCH.pyrene-motions=\
  'include/pyrene/motions/config.hh:/PYRENE_MOTIOINS_VERSION /s/[^0-9.]//gp'			\
  'lib/cmake/pyrene-motions/pyrene-motionsConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/pkgconfig/pyrene-motions.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=			pyrene-motions
DEPEND_ABI.pyrene-motions?=	pyrene-motions>=1.0.0
DEPEND_DIR.pyrene-motions?=	../../wip/pyrene-motions

endif # PYRENE_MOTIONS_DEPEND_MK -----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
