import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'router_handler.dart';

class Routes {
  static String root = '/';
  static String home = '/home';
  static String loginPage = '/login-page';
  static String webViewPage = '/web-view-page';

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc:
            (BuildContext context, Map<String, List<String>> params) {});

    router.define(home, handler: homeHandler);
  }
}
