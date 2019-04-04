# robotpkg depend.mk for:	wip/tiago-description-calibration
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
TIAGO_DESCRIPTION_CALIBRATION_DEPEND_MK:=	${TIAGO_DESCRIPTION_CALIBRATION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			tiago-description-calibration
endif

ifeq (+,$(TIAGO_DESCRIPTION_CALIBRATION_DEPEND_MK)) # ----------------------------------

PREFER.tiago-description-calibration?=	robotpkg

DEPEND_USE+=			tiago-description-calibration

DEPEND_ABI.tiago-description-calibration?=	tiago-description-calibration>=0.0.6
DEPEND_DIR.tiago-description-calibration?=	../../wip/tiago-description-calibration

SYSTEM_SEARCH.tiago-description-calibration	=\
  'share/tiago_description_calibration/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/tiago_description_calibration.pc:/Version/s/[^0-9.]//gp'  \
  'share/tiago_description_calibration/cmake/tiago_description_calibrationConfig.cmake'

endif # TIAGO_DESCRIPTION_CALIBRATION_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
