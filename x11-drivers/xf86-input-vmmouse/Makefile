# Created by: NIIMI Satoshi <sa2c@sa2c.net>

PORTNAME=	xf86-input-vmmouse
PORTVERSION=	13.1.0
PORTREVISION=	5
CATEGORIES=	x11-drivers

MAINTAINER=	x11@FreeBSD.org
COMMENT=	X.Org vmmouse input driver

USES=		gmake xorg-cat:driver

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/COPYING

OPTIONS_SUB=	yes
OPTIONS_DEFINE=	UDEV

OPTIONS_DEFAULT_FreeBSD_12=	UDEV
OPTIONS_DEFAULT_FreeBSD_13=	UDEV
OPTIONS_DEFAULT=${OPTIONS_DEFAULT_${OPSYS}_${OSREL:R}}

UDEV_DESC=		Use udev for input events (requires kernel support)
UDEV_LIB_DEPENDS=	libudev.so:devel/libudev-devd
UDEV_CONFIGURE_WITH=	libudev

ONLY_FOR_ARCHS=	i386 amd64
ONLY_FOR_ARCHS_REASON=	The vmmouse protocol is only supported on x86-compatible architectures.

.include <bsd.port.mk>
