VERSION=	0.1
DISTNAME=	roralink-${VERSION}
CATEGORIES=	wip

MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=roralink/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}roralink
LICENSE=	isc

HOMEPAGE=	https://git.openrobots.org/projects/roralink
MAINTAINER=	openrobots@laas.fr
COMMENT=	Network tunnel to allow seamless wire/wireless connections

ONLY_FOR_PLATFORM=      Linux-%

WRKSRC=		${WRKDIR}/roralink
NO_CONFIGURE=	yes
INSTALLATION_DIRS=	${PREFIX}/bin

do-install:
		cd ${WRKSRC} && ${CP} roraclient ${DESTDIR}${PREFIX}/bin/

include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
