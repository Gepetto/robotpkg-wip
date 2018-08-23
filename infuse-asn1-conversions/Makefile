# robotpkg Makefile for:	devel/infuse-asn1-conversions
# Created:			Ellon Paiva Mendes on Thu, 26 Jul 2018
#

PKGREVISION=        1 
NAME=				infuse-asn1-conversions
VERSION=			0.4
DISTNAME=			${NAME}-${VERSION}
CATEGORIES=			devel
MASTER_SITES=		http://homepages.laas.fr/qlaboure/infuse/
MASTER_REPOSITORY=	git ssh://git@redmine.laas.fr/laas/users/simon/infuse-asn1-conversions.git 
MAINTAINER=			ellon.mendes@laas.fr
HOMEPAGE=			https://redmine.laas.fr/projects/infuse
COMMENT=			Conversions from/to ASN.1 types for InFuse.
LICENSE=			2-clause-bsd



# Options
PKG_SUPPORTED_OPTIONS= eigen3 pcl ros pom

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

PKG_OPTION_DESCR.pom= Enable the conversions from/to POM types
define PKG_OPTION_SET.pom
	CMAKE_ARGS+= -DWITH_POM=ON
	include ../../wip/infuse-pom-base/depend.mk
endef
define PKG_OPTION_UNSET.pom
	CMAKE_ARGS+= -DWITH_POM=OFF
endef

# Dependencies
include ../../wip/infuse-asn1-types/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk

