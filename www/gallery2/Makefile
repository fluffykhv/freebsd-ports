PORTNAME=	gallery2
PORTVERSION=	2.3.2
PORTREVISION=	12
CATEGORIES=	www
MASTER_SITES=	SF/gallery/gallery2/${PORTVERSION}
DISTNAME=	gallery-${PORTVERSION}-full
DIST_SUBDIR=	gallery2
PKGNAMESUFFIX=	${PHP_PKGNAMESUFFIX}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Web based photo album organizer written in PHP
WWW=		https://gallery.sourceforge.net/

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		php:web,flavors
USE_PHP=	session

NO_ARCH=	yes
NO_BUILD=	yes

SUB_FILES=	pkg-message
WRKSRC=		${WRKDIR}/gallery2

OPTIONS_DEFINE=	DCRAW FFMPEG GD GRAPHMAGICK IMAGEMAGICK JHEAD NETPBM NLS
OPTIONS_SINGLE=	BACKEND
OPTIONS_SINGLE_BACKEND=	MYSQL PGSQL
OPTIONS_DEFAULT=IMAGEMAGICK JHEAD MYSQL

DCRAW_RUN_DEPENDS=	dcraw:graphics/dcraw
FFMPEG_RUN_DEPENDS=	ffmpeg:multimedia/ffmpeg
GD_RUN_DEPENDS=		pngtogd:graphics/gd
GD_USE=			PHP=gd
GRAPHMAGICK_RUN_DEPENDS=gm:graphics/GraphicsMagick
IMAGEMAGICK_USES=	magick:run
JHEAD_RUN_DEPENDS=	jhead:graphics/jhead
MYSQL_USE=		PHP=mysqli
NETPBM_RUN_DEPENDS=	giftopnm:graphics/netpbm
NLS_USE=		PHP=gettext
NLS_USES=		gettext
PGSQL_USE=		PHP=pgsql

do-install:
	cd ${WRKSRC}/ && ${COPYTREE_SHARE} . ${STAGEDIR}${WWWDIR}/

.include <bsd.port.mk>
