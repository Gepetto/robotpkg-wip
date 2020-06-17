# robotpkg depend.mk for:	graphics/qt4-osgQt
# Created:			Guilhem Saurel on Mon, 25 May 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
OSGQT_DEPEND_MK:=	${OSGQT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			qt-osgqt
endif

ifeq (+,$(OSGQT_DEPEND_MK)) # -------------------------------------

DEPEND_USE+=			qt-osgqt
DEPEND_ABI.qt-osgqt?=		${PKGTAG.qt-}osgQt>=3.5
DEPEND_DIR.qt-osgqt?=		../../wip/qt-osgqt

SYSTEM_SEARCH.qt-osgqt=							\
  'include/osgQt/Export'						\
  'lib/libosgQt{,5}.so'						\
  'lib/pkgconfig/openscenegraph-osgQt{,5}.pc:/Version/s/[^0-9.]//gp'

include ../../mk/sysdep/qt.mk

endif # OSGQT_DEPEND_MK -------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
