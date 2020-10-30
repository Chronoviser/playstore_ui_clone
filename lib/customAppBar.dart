import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_ui_clone/customColor.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Size preferredsize = Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: MediaQuery.of(context).size.width*1,
      decoration: BoxDecoration(
          color: CustomColor.appbar, borderRadius: BorderRadius.circular(7)),
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 10),
          Icon(
            Icons.menu,
            color: CustomColor.iconInactive,
          ),
          SizedBox(width: 15),
          Text("Search for apps & g...",
              style: TextStyle(fontSize: 16, color: CustomColor.iconInactive)),
          SizedBox(width: 15),
          Icon(Icons.mic_none, color: CustomColor.iconInactive),
          SizedBox(width: 15),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/profileImage.png'))),
          ),
          SizedBox(width: 10)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => preferredsize;
}
