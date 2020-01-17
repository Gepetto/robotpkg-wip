# robotpkg depend.mk for:	wip/libpointmatcher
# Created:			Pierrick Koch on Thu, 27 Mar 2014
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBPOINTMATCHER_DEPEND_MK:=	${LIBPOINTMATCHER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libpointmatcher
endif

ifeq (+,$(LIBPOINTMATCHER_DEPEND_MK)) # --------------------------------------

PREFER.libpointmatcher?=	robotpkg

DEPEND_USE+=		libpointmatcher

DEPEND_ABI.libpointmatcher?=	libpointmatcher>=1.3.1
DEPEND_DIR.libpointmatcher?=	../../wip/libpointmatcher

SYSTEM_SEARCH.libpointmatcher=\
  'include/pointmatcher/PointMatcher.h:/POINTMATCHER_VERSION /s/[^0-9.]//gp'		\
  'lib/libpointmatcher.so'								\
  'share/libpointmatcher/cmake/libpointmatcherConfigVersion.cmake:/PACKAGE_VERSION /s/[^0-9.]//gp'	\
  'share/libpointmatcher/package.xml:/<version>/s/[^0-9.]//gp'

endif # LIBPOINTMATCHER_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
