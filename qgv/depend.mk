# robotpkg Makefile for:	wip/qgv
# Created:			Guilhem Saurel on Thu, 24 Jan 2019
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
QGV_DEPEND_MK:=	${QGV_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		qgv
endif

ifeq (+,$(QGV_DEPEND_MK)) # ------------------------------------------

PREFER.qgv?=	robotpkg

#TODO
SYSTEM_SEARCH.qgv=\
  'include/qgv/config.hh:/QGV_VERSION/s/[^0-9.]//gp'	\
  'lib/libqgvcore.so'							\
  'lib/pkgconfig/qgv.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		qgv

DEPEND_ABI.qgv?=	qgv>=1.1.0
DEPEND_DIR.qgv?=	../../wip/qgv

endif # QGV_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
