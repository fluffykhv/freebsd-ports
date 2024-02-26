PORTNAME=	xf86-input-vmmouse
PORTVERSION=	13.1.0
PORTREVISION=	7
CATEGORIES=	x11-drivers

MAINTAINER=	x11@FreeBSD.org
COMMENT=	X.Org vmmouse input driver
WWW=		https://www.x.org/

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/COPYING

USES=		gmake xorg-cat:driver

GNU_CONFIGURE_MANPREFIX=${PREFIX}/share

OPTIONS_DEFINE=	UDEV
OPTIONS_DEFAULT=	UDEV
OPTIONS_SUB=	yes

UDEV_DESC=		Use udev for input events (requires kernel support)
UDEV_LIB_DEPENDS=	libudev.so:devel/libudev-devd
UDEV_CONFIGURE_WITH=	libudev

ONLY_FOR_ARCHS=	i386 amd64
ONLY_FOR_ARCHS_REASON=	vmmouse protocol is only supported on x86-compatible architectures

.include <bsd.port.mk>
