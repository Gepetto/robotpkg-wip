# robotpkg depend.mk for:	graphics/osg-dae
# Created:			Nicolas Mansard, 15/DEC/2016
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
OSGDAE_DEPEND_MK:=	${PINOCCHIO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		osg-dae
endif

ifeq (+,$(OSGDAE_DEPEND_MK)) # ------------------------------------------

PREFER.osg-dae?=	robotpkg

SYSTEM_SEARCH.osg-dae=\
  'lib/pkgconfig/osg-dae.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		osg-dae

DEPEND_ABI.osg-dae?=	osg-dae>=3.2.0
DEPEND_DIR.osg-dae?=	../../wip/osg-dae

endif # OSGDAE_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
