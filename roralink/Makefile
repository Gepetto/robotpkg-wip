VERSION=	0.3.0
DISTNAME=	roralink-${VERSION}-Source
CATEGORIES=	wip

MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=roralink/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}roralink
LICENSE=	isc

HOMEPAGE=	https://git.openrobots.org/projects/roralink
MAINTAINER=	openrobots@laas.fr
COMMENT=	Network tunnel to allow seamless wire/wireless connections

ONLY_FOR_PLATFORM=      Linux-%

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
