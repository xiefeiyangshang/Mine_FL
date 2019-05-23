//app首页
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:mine_fl/views/main/home.dart';
var homeHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return AppPage();
  },
);
