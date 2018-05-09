# robotpkg depend.mk for:	wip/rviz-plugin-covariance
# Created:			Olivier Stasse on Wed, 29 Mar 2017
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
RVIZ_PLUGIN_COVARIANCE_DEPEND_MK:=	${RVIZ_PLUGIN_COVARIANCE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			rviz-plugin-covariance
endif

ifeq (+,$(RVIZ_PLUGIN_COVARIANCE_DEPEND_MK)) # ----------------------------------

PREFER.rviz-plugin-covariance?=	robotpkg

DEPEND_USE+=			rviz-plugin-covariance

DEPEND_ABI.rviz-plugin-covariance?=	rviz-plugin-covariance>=0.0.6
DEPEND_DIR.rviz-plugin-covariance?=	../../wip/rviz-plugin-covariance

SYSTEM_SEARCH.pmb2-robot=\
  'share/rviz_plugin_covariance/package.xml:/<version>/s/[^0-9.]//gp'	\
  'lib/pkgconfig/rviz_plugin_covariance.pc:/Version/s/[^0-9.]//gp'  \
  'share/rviz_plugin_covariance/cmake/rviz_plugin_covarianceConfig.cmake'

endif # RVIZ_PLUGIN_COVARIANCE_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
