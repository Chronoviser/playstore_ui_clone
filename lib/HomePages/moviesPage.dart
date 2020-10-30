import 'package:flutter/material.dart';
import 'package:playstore_ui_clone/customAppBar.dart';

import '../customColor.dart';
import '../customScrollView.dart';

class MoviesPage extends StatefulWidget {
  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  List<String> titles = [
    "For you",
    "Top selling",
    "New releases",
    "Genres",
    "Studios",
    "Upcoming"
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
