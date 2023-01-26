--- ssl/d1_pkt.c.orig	2022-04-04 05:32:16 UTC
+++ ssl/d1_pkt.c
@@ -120,6 +120,8 @@
 #include <openssl/buffer.h>
 #include <openssl/evp.h>
 
+#include <sys/endian.h>
+
 #include "bytestring.h"
 #include "dtls_locl.h"
 #include "pqueue.h"
@@ -135,7 +137,7 @@ satsub64be(const unsigned char *v1, const unsigned cha
 		do {
 			long l;
 
-			if (BYTE_ORDER == LITTLE_ENDIAN)
+			if (_BYTE_ORDER == _LITTLE_ENDIAN)
 				break;
 			/* not reached on little-endians */
 			/* following test is redundant, because input is
