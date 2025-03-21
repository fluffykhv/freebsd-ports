--- libphobos/libdruntime/core/sys/freebsd/config.d.orig	2022-08-19 08:09:55 UTC
+++ libphobos/libdruntime/core/sys/freebsd/config.d
@@ -14,8 +14,9 @@ public import core.sys.posix.config;
 // NOTE: When adding newer versions of FreeBSD, verify all current versioned
 // bindings are still compatible with the release.
 
-     version (FreeBSD_13) enum __FreeBSD_version = 1300000;
-else version (FreeBSD_12) enum __FreeBSD_version = 1202000;
+     version (FreeBSD_14) enum __FreeBSD_version = 1400000;
+else version (FreeBSD_13) enum __FreeBSD_version = 1301000;
+else version (FreeBSD_12) enum __FreeBSD_version = 1204000;
 else version (FreeBSD_11) enum __FreeBSD_version = 1104000;
 else version (FreeBSD_10) enum __FreeBSD_version = 1004000;
 else version (FreeBSD_9)  enum __FreeBSD_version = 903000;
