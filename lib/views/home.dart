import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mine_fl/utils/image_utils.dart';
import 'package:mine_fl/utils/toast_utils.dart';

import 'widget/banner_view.dart';

class HomeScreen extends StatefulWidget {
  _ScrollHome createState() => _ScrollHome();
}

class _ScrollHome extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List<BannerItem> bannerList = [];

  @override
  void initState() {
    super.initState();
    bannerList
      ..add(BannerItem(
          'https://img.g-banker.com/data/online/banner/TH934ALJ_20181212172151.jpg',
          'https://test-app-activity.g-banker.com/html/pages/anActivityPreheat/'))
      ..add(BannerItem(
          'https://img.g-banker.com/data/test/banner/M2LYIB3A_20180131144354.png',
          'https://test-app-activity.g-banker.com/html/pages/festivalAct/'))
      ..add(BannerItem(
          'https://img.g-banker.com/data/test/banner/ACVPY9C8_20190517101600.png',
          'http://192.168.10.232:3900/html/pages/anActivityPreheat/'))
      ..add(BannerItem(
          'http://img5.imgtn.bdimg.com/it/u=19791982303799788659&fm=26&gp=0.jpg',
          'http://192.168.31.17:3900/html/pages/anActivityPreheat/#/'));
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      // 内容
      slivers: <Widget>[
        new SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 46, 0, 20),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                _homePriceWidget(),
                _bannerWidget(),
                _operateContainer(),
                _goldBarWidget(),
                _newUserWidget(),
                _planWidget(),
                _adHoriztalScroll(),
                _tradeTotalWidget(),
                _costumServiceWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  ///顶部金价
  _homePriceWidget() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child:
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '实时金价[元/克]',
              style: TextStyle(fontSize: 13, color: Color(0xFF9B9B9B)),
            ),
            Row(
              children: <Widget>[
                Text(
                  '270.00',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  child: Image.asset('assets/images/up_right_arrow_icon.png'),
                  padding: EdgeInsets.all(4),
                ),
                Text(
                  '-.--%',
                  style: TextStyle(fontSize: 15, color: Color(0xFFFF3D3D)),
                )
              ],
            )
          ],
        )),
        GestureDetector(
          onTap: () {
            ///TODO:买入
            ToastHelper.defalutToast('买入');
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(18, 7, 18, 7),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xFFF2F2F5),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Text(
              '买入',
              style: TextStyle(fontSize: 16, color: Color(0xFF333333)),
            ),
          ),
        ),
      ]),
    );
  }

  ///banner部分
  _bannerWidget() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: BannerWidget(180, bannerList,
          textBackgroundColor: Colors.transparent, bannerPress: (pos, item) {
        ToastHelper.defalutToast('$pos<-->${item.linkUrl}');
      }),
    );
  }

  ///说明部分
  _operateContainer() {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
              children: <Widget>[
                ImageUtils.getImage(
                    'assets/images/ic_home_top_quesheng_bg.png', 36.0, 36.0),
                Text(
                  '邀请奖励',
                  style: TextStyle(color: Color(0xFF333333)),
                )
              ],
            )),
            Expanded(
                child: Column(
              children: <Widget>[
                ImageUtils.getImage(
                    'assets/images/ic_home_top_quesheng_bg.png', 36.0, 36.0),
                Text(
                  '钱包学院',
                  style: TextStyle(color: Color(0xFF333333)),
                )
              ],
            )),
            Expanded(
                child: Column(
              children: <Widget>[
                ImageUtils.getImage(
                    'assets/images/ic_home_top_quesheng_bg.png', 36.0, 36.0),
                Text(
                  '每天挖矿',
                  style: TextStyle(color: Color(0xFF333333)),
                )
              ],
            )),
            Expanded(
                child: Column(
              children: <Widget>[
                ImageUtils.getImage(
                    'assets/images/ic_home_top_quesheng_bg.png', 36.0, 36.0),
                Text(
                  '安全保障',
                  style: TextStyle(color: Color(0xFF333333)),
                )
              ],
            )),
          ],
        ));
  }

  ///臻选金条
  _goldBarWidget() {
    return Column();
  }

  ///新手推荐
  _newUserWidget() {
    return Column();
  }

  ///网贷计划
  _planWidget() {
    return Column();
  }

  ///广告
  _adHoriztalScroll() {
    return Row();
  }

  ///交易额
  _tradeTotalWidget() {
    return Row();
  }

  ///客服部分
  _costumServiceWidget() {
    return Column();
  }
}
