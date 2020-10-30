import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomePages/appsPage.dart';
import 'HomePages/booksPage.dart';
import 'HomePages/moviesPage.dart';
import 'customColor.dart';
import 'HomePages/gamePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: CustomColor.iconActive, accentColor: CustomColor.back),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> homePages = [GamePage(), AppsPage(), MoviesPage(), BooksPage()];
  static const List faltu = [Text("1"), Text("2")];
  static int currIndex = 0;

  void _updateUI() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: CustomColor.back,
        systemNavigationBarColor: CustomColor.back));
  }

  @override
  void initState() {
    super.initState();
    _updateUI();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.back,
        // appBar: CustomAppBar(),
        body: homePages[currIndex],
        bottomNavigationBar: Container(
            height: 61,
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Divider(
                height: 1,
                color: CustomColor.iconInactive,
              ),
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: CustomColor.back,
                elevation: 0,
                currentIndex: currIndex,
                onTap: (index) {
                  setState(() {
                    currIndex = index;
                  });
                },
                selectedItemColor: CustomColor.iconActive,
                unselectedItemColor: CustomColor.iconInactive,
                items: [
                  customNavigationBarItem(name: "Games", iconData: Icons.games),
                  customNavigationBarItem(name: "Apps", iconData: Icons.apps),
                  customNavigationBarItem(
                      name: "Movies", iconData: Icons.local_movies),
                  customNavigationBarItem(name: "Books", iconData: Icons.book)
                ],
              )
            ])),
      ),
    );
  }
}

BottomNavigationBarItem customNavigationBarItem(
    {String name, IconData iconData}) {
  return BottomNavigationBarItem(
      icon: Icon(iconData),
      title: Text(name),
      backgroundColor: CustomColor.back);
}