import 'package:flutter/material.dart';
import 'package:playstore_ui_clone/customAppBar.dart';

import 'customColor.dart';

Widget customTabBar(BuildContext context, List<String> titles) {
  return TabBar(
    isScrollable: true,
    indicatorColor: CustomColor.iconActive,
    indicatorWeight: 3,
    indicatorSize: TabBarIndicatorSize.label,
    labelColor: CustomColor.iconActive,
    unselectedLabelColor: CustomColor.iconInactive,
    tabs: [
      TabItem(title: titles[0]),
      TabItem(title: titles[1]),
      TabItem(title: titles[2]),
      TabItem(title: titles[3]),
      TabItem(title: titles[4]),
      TabItem(title: titles[5])
    ],
  );
}

Widget TabItem({String title}) {
  return Tab(
    child: Container(
      child: Text(
        title,
        style: TextStyle(fontSize: 14),
      ),
    ),
  );
}