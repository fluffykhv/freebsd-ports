# Created by: Matthias Andree <mandree@FreeBSD.org>
# $FreeBSD: head/security/openvpn-mbedtls/Makefile 451515 2017-10-08 09:46:27Z mandree $

PKGNAMESUFFIX=		-syslog

COMMENT=		Secure IP/Ethernet tunnel daemon, syslog-based build

CONFLICTS_INSTALL=	openvpn-[0-9].* openvpn-beta-[0-9]* openvpn-devel-[0-9]*

MASTERDIR=		${.CURDIR}/../../security/openvpn

EXTRA_PATCHES+=		${.CURDIR}/files/extrapatch-syslog

.include "${MASTERDIR}/Makefile"
