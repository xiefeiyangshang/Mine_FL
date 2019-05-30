import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'resouces/shared_perferences_keys.dart';
import 'routers/application.dart';
import 'routers/routers.dart';
import 'utils/shared_preferences.dart';
import 'views/main/start_page.dart';

SpUtil spUtil;
const int ThemeColor = 0xFFC91B3A;

void main() async {
  spUtil = await SpUtil.getInstance();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp() {
    final router = new Router();
    Routes.configureRoutes(router);
    App.router = router;
    App.sharepefrence = spUtil;
  }

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      theme: new ThemeData(
        primaryColor: Color(ThemeColor),
        backgroundColor: Colors.white,
      ),
      home: new Scaffold(
        body: showWelcomPage(),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: App.router.generator,
    );
  }

  showWelcomPage() {
    bool guide = spUtil.getBool(SharedPreferncesKey.showGuide);
    if (guide == null || guide) {
      return MainPage();
    } else {
      return MainPage();
    }
  }
}
