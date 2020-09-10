# robotpkg depend.mk for:	wip/agimus-vision
# Created:			Long Ha Thuc on Wed, 19 Aug 2020
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
AGIMUS_VISION_DEPEND_MK:=	        ${AGIMUS_VISION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			agimus-vision
endif

ifeq (+,$(AGIMUS_VISION_DEPEND_MK)) # -------------------------------------------

PREFER.agimus-vision?=		robotpkg

DEPEND_USE+=			agimus-vision

DEPEND_ABI.agimus-vision?=	agimus-vision>=1.0.0
DEPEND_DIR.agimus-vision?=	../../wip/agimus-vision

SYSTEM_SEARCH.agimus-vision= \
	'lib/pkgconfig/agimus-vision.pc:/Version/s/[^0-9.]//gp' \
	'share/agimus-vision/cmake/agimus-visionConfig-version.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'

endif # AGIMUS_VISION_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}

