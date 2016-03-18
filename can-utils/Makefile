# robotpkg Makefile for:	hardware/can-utils
# Created:			Matthieu Herrb on Fri, 21 Feb 2014
#

DISTNAME=	can-utils-${VERSION}
VERSION=	20160229
CATEGORIES=	hardware

COMMIT=			c68980320412a9e9a93d35bff9f73abe6385347c
FETCH_METHOD=		git
MASTER_SITES=		https://github.com/linux-can/can-utils.git@${COMMIT}
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

