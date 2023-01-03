--- include/curl/typecheck-gcc.h
+++ include/curl/typecheck-gcc.h
@@ -42,9 +42,8 @@
  */
 #define curl_easy_setopt(handle, option, value)                         \
   __extension__({                                                       \
-      CURL_IGNORE_DEPRECATION(__typeof__(option) _curl_opt = option;)   \
+      CURLoption _curl_opt = (option);                                  \
       if(__builtin_constant_p(_curl_opt)) {                             \
-        (void) option;                                                  \
         CURL_IGNORE_DEPRECATION(                                        \
           if(curlcheck_long_option(_curl_opt))                          \
             if(!curlcheck_long(value))                                  \
@@ -120,9 +119,8 @@
 /* wraps curl_easy_getinfo() with typechecking */
 #define curl_easy_getinfo(handle, info, arg)                            \
   __extension__({                                                       \
-      CURL_IGNORE_DEPRECATION(__typeof__(info) _curl_info = info;)      \
+      CURLINFO _curl_info = (info);                                     \
       if(__builtin_constant_p(_curl_info)) {                            \
-        (void) info;                                                    \
         CURL_IGNORE_DEPRECATION(                                        \
           if(curlcheck_string_info(_curl_info))                         \
             if(!curlcheck_arr((arg), char *))                           \
