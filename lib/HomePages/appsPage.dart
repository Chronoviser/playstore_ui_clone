import 'package:flutter/material.dart';
import 'package:playstore_ui_clone/customAppBar.dart';
import 'package:playstore_ui_clone/customTabBar.dart';

import '../customColor.dart';
import '../customScrollView.dart';

class AppsPage extends StatefulWidget {
  @override
  _AppsPageState createState() => _AppsPageState();
}

class _AppsPageState extends State<AppsPage> {
  List<String> titles = [
    "For you",
    "Top charts",
    "Categories",
    "Editors' Choice",
    "Kids",
    "Early access"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: CustomColor.back,
        body: TabBarView(
          children: [
            customScrollView(context, titles),
            customScrollView(context, titles),
            customScrollView(context, titles),
            customScrollView(context, titles),
            customScrollView(context, titles),
            customScrollView(context, titles)
          ])
      ),
    );
  }
}