PORTNAME=	packit
DISTVERSION=	1.8.1
PORTREVISION=	1
CATEGORIES=	net-mgmt

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Network auditing tool
WWW=		https://github.com/eribertomota/packit

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/LICENSE

LIB_DEPENDS=	libnet.so:net/libnet

USES=		autoreconf localbase
USE_GITHUB=	yes
GH_ACCOUNT=	eribertomota

GNU_CONFIGURE=	yes

PLIST_FILES=	share/man/man8/packit.8.gz \
		sbin/packit

OPTIONS_DEFINE=		CAPTURE INJECTION
OPTIONS_DEFAULT=	CAPTURE INJECTION

CAPTURE_DESC=	Capture support
INJECTION_DESC=	Injection support

CAPTURE_CONFIGURE_OFF=		--without-capture
INJECTION_CONFIGURE_OFF=	--without-injection

.include <bsd.port.mk>
