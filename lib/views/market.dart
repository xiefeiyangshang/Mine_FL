import 'package:flutter/material.dart';

class MarketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('行情'),
        ),
        body: Center(
          child: Text(
            '行情',
            style: TextStyle(fontSize: 50),
          ),
        ));
  }
}