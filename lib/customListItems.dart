import 'package:flutter/material.dart';
import 'package:playstore_ui_clone/customColor.dart';
import 'package:playstore_ui_clone/textStyles.dart';

Widget discoveredListItem(
    {String gameBannerImage,
    String gameIcon,
    String gameName,
    String gameCat1,
    String gameCat2,
    String gameRating,
    String gameSize}) {
  return Container(
    height: 170,
    width: 200,
    margin: EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/discovergames/$gameBannerImage',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            )),
        Expanded(
          flex: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/discovergames/$gameIcon')),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(
                    "$gameName",
                    style: titleTextStyle(),
                  )),
                  Expanded(
                      child: Text(
                    "$gameCat1  •  $gameCat2",
                    style: descTextStyle(),
                  )),
                  Expanded(
                      child: Text(
                    "$gameRating★   $gameSize MB",
                    style: descTextStyle(),
                  ))
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget suggestedListItem({String gameIcon, String gameName, String gameSize}) {
  return Container(
    height: 140,
    width: 100,
    margin: EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/suggestedforyou/$gameIcon'),
            )
        ),
        SizedBox(height:10),
        Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$gameName",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(height: 1),
                Text(
                  "$gameSize MB",
                  style: TextStyle(color: CustomColor.iconInactive, fontSize: 12),
                )
              ],
            )),
      ],
    ),
  );
}
