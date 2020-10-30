import 'package:flutter/material.dart';

import '../customColor.dart';
import '../customScrollView.dart';

class BooksPage extends StatefulWidget {

  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  List<String> titles = [
    "Ebooks",
    "Audiobooks",
    "Comics",
    "Genres",
    "Top Selling",
    "New releases"
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
