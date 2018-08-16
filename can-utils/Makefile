# robotpkg Makefile for:	hardware/can-utils
# Created:			Matthieu Herrb on Fri, 21 Feb 2014
#

VERSION=	2018.02.0
PKGNAME=	can-utils-${VERSION}
DISTNAME=	v${VERSION}
CATEGORIES=	hardware

MASTER_SITES=		https://github.com/linux-can/can-utils/archive/
MASTER_REPOSITORY=	git https://github.com/linux-can/can-utils.git

MAINTAINER=	matthieu.herrb@laas.fr
HOMEPAGE=	https://github.com/linux-can/can-utils
COMMENT=	Linux Socket-CAN userspace utilities and tools

LICENSE=	gnu-gpl-v2

WRKSRC=		${WRKDIR}/can-utils-${VERSION}/

ONLY_FOR_PLATFORM=	Linux-%

pre-configure: autoreconf

include ../../mk/sysdep/automake.mk
include ../../mk/sysdep/autoconf.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk

