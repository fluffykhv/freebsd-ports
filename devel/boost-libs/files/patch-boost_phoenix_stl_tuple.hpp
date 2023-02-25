--- boost/phoenix/stl/tuple.hpp.orig	2022-12-08 01:02:46 UTC
+++ boost/phoenix/stl/tuple.hpp
@@ -110,7 +110,7 @@ namespace boost { namespace phoenix {
     namespace placeholders {
         #define BOOST_PP_LOCAL_LIMITS (1, BOOST_PHOENIX_ARG_LIMIT)
         #define BOOST_PP_LOCAL_MACRO(N)                                                \
-            auto uarg##N =                                                             \
+            auto const uarg##N =                                                       \
             boost::phoenix::get_<(N)-1>(boost::phoenix::placeholders::arg1);
         #include BOOST_PP_LOCAL_ITERATE()
     }
