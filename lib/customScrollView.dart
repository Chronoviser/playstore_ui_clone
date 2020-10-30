import 'package:flutter/material.dart';
import 'package:playstore_ui_clone/customAppBar.dart';
import 'package:playstore_ui_clone/customListItems.dart';
import 'customColor.dart';
import 'customTabBar.dart';

Widget customScrollView(BuildContext context, List<String> titles) {
  return CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: CustomColor.back,
            title: CustomAppBar(),
            floating: false,
            pinned: true,
            flexibleSpace: Align(
                alignment: Alignment.bottomCenter,
                child: customTabBar(context, titles)),
            expandedHeight: 100,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "Discover recommended games",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: CustomColor.iconInactive,
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      discoveredListItem(
                          gameBannerImage: 'clashRoyalebanner.jpg',
                          gameIcon: 'clashRoyaleIcon.jpg',
                          gameName: 'Clash Royale',
                          gameCat1: 'Strategy',
                          gameCat2: 'Tactics',
                          gameRating: '4.2',
                          gameSize: '124'),
                      discoveredListItem(
                          gameBannerImage: 'angrybirdsBanner.jpg',
                          gameIcon: 'angrybirdsIcon.jpg',
                          gameName: 'Angry Birds 2',
                          gameCat1: 'Arcade',
                          gameCat2: 'Comedy',
                          gameRating: '4.4',
                          gameSize: '204'),
                      discoveredListItem(
                          gameBannerImage: 'brawlStarsBanner.png',
                          gameIcon: 'brawlStarsIcon.png',
                          gameName: 'Brawl Stars',
                          gameCat1: 'Action',
                          gameCat2: 'Hero Shooter',
                          gameRating: '4.3',
                          gameSize: '147')
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "Suggested for you",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      suggestedListItem(
                          gameName: 'Red Ball 4',
                          gameIcon: 'redball4.png',
                          gameSize: '53'),
                      suggestedListItem(
                          gameName: 'Ludo King™',
                          gameIcon: 'ludoKing.png',
                          gameSize: '50'),
                      suggestedListItem(
                          gameName: 'Sniper 3D',
                          gameIcon: 'sniper3d.jpg',
                          gameSize: '140'),
                      suggestedListItem(
                          gameName: 'Crowd City',
                          gameIcon: 'crowdcity.png',
                          gameSize: '5.6'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "Explore recommended games",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: CustomColor.iconInactive,
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      discoveredListItem(
                          gameBannerImage: 'brawlStarsBanner.png',
                          gameIcon: 'brawlStarsIcon.png',
                          gameName: 'Brawl Stars',
                          gameCat1: 'Action',
                          gameCat2: 'Hero Shooter',
                          gameRating: '4.3',
                          gameSize: '147'),
                      discoveredListItem(
                          gameBannerImage: 'angrybirdsBanner.jpg',
                          gameIcon: 'angrybirdsIcon.jpg',
                          gameName: 'Angry Birds 2',
                          gameCat1: 'Arcade',
                          gameCat2: 'Comedy',
                          gameRating: '4.4',
                          gameSize: '204'),
                      discoveredListItem(
                          gameBannerImage: 'clashRoyalebanner.jpg',
                          gameIcon: 'clashRoyaleIcon.jpg',
                          gameName: 'Clash Royale',
                          gameCat1: 'Strategy',
                          gameCat2: 'Tactics',
                          gameRating: '4.2',
                          gameSize: '124'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ]),
          )
        ],
      );
}
