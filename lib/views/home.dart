import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _ScrollHome createState() => _ScrollHome();
}

class _ScrollHome extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[],
      )),
    );
  }
}
