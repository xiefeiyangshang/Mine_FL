import 'package:flutter/material.dart';
import 'package:mine_fl/resouces/shared_perferences_keys.dart';
import 'package:mine_fl/routers/application.dart';

class GuidePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GuidePageState();
  }
}

class _GuidePageState extends State<GuidePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    App.sharepefrence.putBool(SharedPreferncesKey.showGuide, true);
    return Center(
      child: Text(
        '引导页',
        style: TextStyle(fontSize: 50, color: Colors.red),
      ),
    );
  }
}
