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

# depend on appropriate Qt version when using Qt, all versions otherwise.
_qgv_qts={qt4,qt5}
_qgv_qt=$(if $(filter qt,${PKG_ALTERNATIVES}),${PKG_ALTERNATIVE.qt},${_qgv_qts})

DEPEND_ABI.qgv?=	${_qgv_qt}-qgv>=1.1.0
DEPEND_DIR.qgv?=	../../wip/qgv

endif # QGV_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
