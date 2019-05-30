import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _ScrollHome createState() => _ScrollHome();
}

class _ScrollHome extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController(initialScrollOffset: 100.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          controller: _scrollController,
          child: ),
    );
  }
}
