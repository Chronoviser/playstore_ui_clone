import 'package:flutter/material.dart';
import 'package:playstore_ui_clone/customAppBar.dart';

import '../customColor.dart';
import '../customScrollView.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  List<String> titles = [
    "For you",
    "Top charts",
    "Events",
    "Premium",
    "Categories",
    "Kids"
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
