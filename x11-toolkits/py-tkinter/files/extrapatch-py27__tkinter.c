--- _tkinter.c.orig	2019-10-19 20:38:44.000000000 +0200
+++ _tkinter.c	2019-11-28 16:08:37.232941000 +0100
@@ -92,7 +92,7 @@
    Tcl_Unichar. This is also ok as long as Python uses UCS-4,
    as well.
 */
-#if TCL_UTF_MAX != 3 && !(defined(Py_UNICODE_WIDE) && TCL_UTF_MAX==6)
+#if TCL_UTF_MAX != 4 && !(defined(Py_UNICODE_WIDE) && TCL_UTF_MAX==6)
 #error "unsupported Tcl configuration"
 #endif
 
@@ -1164,7 +1164,7 @@
         Py_ssize_t size = PyUnicode_GET_SIZE(value);
         /* This #ifdef assumes that Tcl uses UCS-2.
            See TCL_UTF_MAX test above. */
-#if defined(Py_UNICODE_WIDE) && TCL_UTF_MAX == 3
+#if defined(Py_UNICODE_WIDE) && TCL_UTF_MAX == 4
         Tcl_UniChar *outbuf = NULL;
         Py_ssize_t i;
         size_t allocsize;
@@ -1377,7 +1377,7 @@
 
     if (value->typePtr == app->StringType) {
 #ifdef Py_USING_UNICODE
-#if defined(Py_UNICODE_WIDE) && TCL_UTF_MAX==3
+#if defined(Py_UNICODE_WIDE) && TCL_UTF_MAX==4
         PyObject *result;
         int size;
         Tcl_UniChar *input;
