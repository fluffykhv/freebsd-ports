PORTNAME=	zrep
DISTVERSIONPREFIX=	v
DISTVERSION=	2.0.2
CATEGORIES=	sysutils

MAINTAINER=	eduardo@FreeBSD.org
COMMENT=	ZFS based replication and failover solution
WWW=		http://www.bolthole.com/solaris/zrep/

LICENSE=	bolthole
LICENSE_NAME=	bolthole
LICENSE_FILE=	${WRKSRC}/LICENSE.txt
#LICENSE_PERMS=	no-dist-mirror no-dist-sell no-pkg-mirror no-pkg-sell
LICENSE_PERMS=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept

RUN_DEPENDS=	bash:shells/bash

USES=		shebangfix
USE_GITHUB=	yes
GH_ACCOUNT=	bolthole

SHEBANG_FILES=	${PORTNAME}

NO_ARCH=	yes
NO_BUILD=	yes

PLIST_FILES=	bin/${PORTNAME}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${STAGEDIR}/${PREFIX}/bin

.include <bsd.port.mk>
