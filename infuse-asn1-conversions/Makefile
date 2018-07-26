# robotpkg Makefile for:    wip/infuse-asn1-conversions
# Created:                  Ellon Paiva Mendes on wed, 25 July 2018

NAME=				infuse-asn1-conversions
VERSION=			0.1
DISTNAME=			${NAME}-${VERSION}
CATEGORIES=			devel
MASTER_SITES=		http://homepages.laas.fr/emendes/infuse/
MASTER_REPOSITORY=	git ssh://git@redmine.laas.fr/laas/users/simon/infuse-asn1-conversions.git 
MAINTAINER=			ellon.mendes@laas.fr
HOMEPAGE=			https://redmine.laas.fr/projects/infuse
COMMENT=			Conversions from/to ASN.1 types for InFuse.
LICENSE=			2-clause-bsd


# Options
PKG_SUPPORTED_OPTIONS= eigen3 pcl ros  

PKG_OPTION_DESCR.eigen3= Enable the conversions from/to Eigen3 types
define PKG_OPTION_SET.eigen3
	CMAKE_ARGS+= -DWITH_EIGEN=ON
	include ../../math/eigen3/depend.mk
endef
define PKG_OPTION_UNSET.eigen3
	CMAKE_ARGS+= -DWITH_EIGEN=OFF
endef

PKG_OPTION_DESCR.ros= Enable the conversions from/to ROS types
define PKG_OPTION_SET.ros
	CMAKE_ARGS+= -DWITH_ROS=ON
	include ../../devel/ros-roscpp-core/depend.mk
endef
define PKG_OPTION_UNSET.ros
	CMAKE_ARGS+= -DWITH_ROS=OFF
endef

PKG_OPTION_DESCR.pcl= Enable the conversions from/to PCL types
define PKG_OPTION_SET.pcl
	CMAKE_ARGS+= -DWITH_PCL=ON
	include ../../wip/mk/sysdep/pcl.mk
endef
define PKG_OPTION_UNSET.pcl
	CMAKE_ARGS+= -DWITH_PCL=OFF
endef

# Dependencies
include ../../wip/infuse-asn1-types/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk

