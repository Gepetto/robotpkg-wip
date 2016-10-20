# robotpkg Makefile for:	wip/simple-humanoid-description
# Created:			Rohan Budhiraja on Wed Oct 19, 2016
#

VERSION=		1.0.1
DISTNAME=		simple_humanoid_description-${VERSION}
PKGNAME=		simple-humanoid-description-${VERSION}

CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=simple-humanoid-description/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}laas/simple_humanoid_description/

COMMENT=		Rigid body model of a simple humanoid robot.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		hpp@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/simple_humanoid_description

# disable -Werror because of x86_64 warnings (must be fixed upstream) and
# boost + gcc that don't cohabit well depending on their respective versions
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

# Install in lib by default to deal with Fedora systems. TODO: use the cmake install dir variable in depend.mk
CMAKE_ARGS+=    	-DCMAKE_INSTALL_LIBDIR=lib


# man pages location
CMAKE_ARGS+=		-DMANDIR=${PREFIX}/${PKGMANDIR}
# library location

include ../../pkgtools/pkg-config/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
