import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('产品'),
        ),
        body: Center(
          child: Text(
            '产品',
            style: TextStyle(fontSize: 50),
          ),
        ));
  }
}