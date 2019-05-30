import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mine_fl/utils/image_utils.dart';

import '../home.dart';
import '../market.dart';
import '../mine.dart';
import '../product.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  List<Widget> list = List();
  var tabImages;
  var appBarTitles = ['首页', '产品', '行情', '我的'];

//获取icon
  Image getTabIcon(int curIndex) {
    if (curIndex == _currentIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

/*
   * 获取bottomTab的颜色和文字
   */
  Text getTabTitle(int curIndex) {
    if (curIndex == _currentIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 10.0, color: const Color(0xffff9900)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 10.0, color: const Color(0xffbcbcbc)));
    }
  }

  @override
  void initState() {
    list
      ..add(HomeScreen())
      ..add(ProductScreen())
      ..add(MarketScreen())
      ..add(MineScreen());
    tabImages = [
      [
        ImageUtils.getImage('assets/images/tab0_unable_iv.png', 24.0, 24.0),
        ImageUtils.getImage('assets/images/tab0_enable_iv.png', 24.0, 24.0)
      ],
      [
        ImageUtils.getImage('assets/images/tab1_unable_iv.png', 24.0, 24.0),
        ImageUtils.getImage('assets/images/tab1_enable_iv.png', 24.0, 24.0)
      ],
      [
        ImageUtils.getImage('assets/images/tab2_unable_iv.png', 24.0, 24.0),
        ImageUtils.getImage('assets/images/tab2_enable_iv.png', 24.0, 24.0)
      ],
      [
        ImageUtils.getImage('assets/images/tab3_unable_iv.png', 24.0, 24.0),
        ImageUtils.getImage('assets/images/tab3_enable_iv.png', 24.0, 24.0)
      ],
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: getTabIcon(0), title: getTabTitle(0)),
          BottomNavigationBarItem(icon: getTabIcon(1), title: getTabTitle(1)),
          BottomNavigationBarItem(icon: getTabIcon(2), title: getTabTitle(2)),
          BottomNavigationBarItem(icon: getTabIcon(3), title: getTabTitle(3)),
        ],
        currentIndex: _currentIndex,
        iconSize: 24.0,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        onTap: (int index) {
          Fluttertoast.showToast(
              msg: '测试->$_currentIndex',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Color.fromARGB(88, 00, 00, 00));
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
