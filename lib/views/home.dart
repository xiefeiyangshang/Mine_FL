import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mine_fl/model/test/product.dart';
import 'package:mine_fl/utils/image_utils.dart';
import 'package:mine_fl/utils/toast_utils.dart';

import 'widget/banner_view.dart';

class HomeScreen extends StatefulWidget {
  _ScrollHome createState() => _ScrollHome();
}

class _ScrollHome extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List<BannerItem> bannerList = [];
  List<PlanProductModel> planList = [];

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
          'https://img.g-banker.com/data/test/banner/M2LYIB3A_20180131144354.png',
          'http://192.168.31.17:3900/html/pages/anActivityPreheat/#/'));
    planList
      ..add(PlanProductModel('月月fan', '7.20', '5个月'))
      ..add(PlanProductModel('安心智选', '9.20', '90个月'))
      ..add(PlanProductModel('安心投', '11.20', '5个月'))
      ..add(PlanProductModel('没蝶恋蜂狂是', '7.20', '90天'))
      ..add(PlanProductModel('的看法计算机', '7.20', '5个月'))
      ..add(PlanProductModel('月fan', '7.20', '5个月'))
      ..add(PlanProductModel('月月地方fan', '8.20', '5个月'));
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
      child: BannerWidget(165, bannerList,
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
    return Column(
      children: <Widget>[
        Container(
          color: Color(0xFFF4F4F4),
          height: 10,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          color: Color(0xFFFBFBFB),
          alignment: Alignment.topLeft,
          child: Text(
            '黄金产品',
            style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '臻选金条',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF333333)),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                            margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Color(0xFFEABE7B)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Text(
                              '1克起购',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xFFD3A664)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                            margin: EdgeInsets.fromLTRB(4, 0, 0, 0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Color(0xFFEABE7B)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Text(
                              '可提实物',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xFFD3A664)),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '随时买卖 随时赚钱',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD3A664)),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  ToastHelper.defalutToast('立即购买');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
                  decoration: BoxDecoration(
                      color: Color(0xFFEABE7B),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Text(
                    '立即购买',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  ///新手推荐
  _newUserWidget() {
    return Column(
      children: <Widget>[
        Container(
          color: Color(0xFFFF4F4F4),
          height: 10,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          color: Color(0xFFFBFBFB),
          alignment: Alignment.topLeft,
          child: Text(
            '网贷产品',
            style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: planList.length,
          itemBuilder: (context, index) {
            return getWd(index);
          },
        )
      ],
    );
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

  ///测试
  getWd(int index) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '${planList[index].name}',
            style: TextStyle(color: Color(0xFF333333), fontSize: 16),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(0, 14, 0, 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${planList[index].rate}%',
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFFFF704A),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '目标年化回报率',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF9B9B9B)),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${planList[index].duration}',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFF333333)),
                      ),
                      Text(
                        '出借期',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF9B9B9B)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 0.5,
            color: Color(0xFFEAEAEB),
          )
        ],
      ),
    );
  }
}
