import 'package:flutter/material.dart';

class ImageUtils {
  //获取本地图片
  static Image getImage(path, width, height) {
    return new Image.asset(path, width: width, height: height);
  }
}
