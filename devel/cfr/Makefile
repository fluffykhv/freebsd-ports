PORTNAME=	cfr
DISTVERSION=	0.152
CATEGORIES=	devel java
MASTER_SITES=	http://www.benf.org/other/cfr/ \
		https://www.benf.org/other/cfr/ \
		https://github.com/leibnitz27/cfr/releases/download/${DISTVERSION}/
EXTRACT_SUFX=	.jar
EXTRACT_ONLY=

MAINTAINER=	0mp@FreeBSD.org
COMMENT=	Class File Reader (CFR) Java decompiler
WWW=		https://www.benf.org/other/cfr/

# http://www.benf.org/other/cfr/license.html
LICENSE=	MIT

USES=		java

NO_ARCH=	yes
NO_BUILD=	yes
PLIST_FILES=	${JAVAJARDIR}/cfr.jar

_JARFILE=	${PORTNAME}.jar

do-install:
	${INSTALL_DATA} ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		${STAGEDIR}${JAVAJARDIR}/${_JARFILE}

do-test:
	# Find out if the decompiler works.
	${JAVA} -jar ${STAGEDIR}${JAVAJARDIR}/${_JARFILE} \
		${STAGEDIR}${JAVAJARDIR}/${_JARFILE} >/dev/null

.include <bsd.port.mk>
