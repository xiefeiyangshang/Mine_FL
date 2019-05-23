import 'package:flutter/material.dart';

class GuildePage extends StatefulWidget {
  GuildePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _GuidePageState();
  }
}

class _GuidePageState extends State<GuildePage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}
