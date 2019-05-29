import 'package:flutter/material.dart';
import 'package:mine_fl/utils/shared_preferences.dart';

class AppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<AppPage>
    with SingleTickerProviderStateMixin {
  SpUtil spUtil;
  static List tabData=[
    {'text':'首页','icon':Icon(Icons.extension)}
  ];

  @override
  Widget build(BuildContext context) {
    return null;
  }
}
