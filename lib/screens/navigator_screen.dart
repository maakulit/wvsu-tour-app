import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:wvsu_tour_app/components/app_brand_horizontal.dart';
import 'package:wvsu_tour_app/config/app.dart';

class NavigatorScreen extends StatefulWidget {
  NavigatorScreen({Key key}) : super(key: key);

  @override
  _NavigatorScreenState createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  List<int> data = [];
  int _focusedIndex = 0;
  GlobalKey<ScrollSnapListState> sslKeyCampus = GlobalKey();
  GlobalKey<ScrollSnapListState> sslKeyAdmin = GlobalKey();
  GlobalKey<ScrollSnapListState> sslKeyOrganizations = GlobalKey();
  GlobalKey<ScrollSnapListState> sslKeyLandmarksSymbols = GlobalKey();
  GlobalKey<ScrollSnapListState> sslKeyStaff = GlobalKey();
  GlobalKey<ScrollSnapListState> sslKeyAcad = GlobalKey();

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 30; i++) {
      data.add(Random().nextInt(100) + 1);
    }

    // print(_focusedIndex);
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 200,
      child: Material(
        borderRadius: appDefaultBorderRadius,
        color: appPrimaryColor,
        child: InkWell(
          onTap: () {
            sslKeyCampus.currentState.focusToItem(index);
          },
          child: Stack(
            children: [
              Positioned(
                bottom: 20,
                left: 20,
                child: Text("Data Here",
                    style: GoogleFonts.openSans(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size appScreenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            color: appPrimaryColor,
            image: DecorationImage(
                alignment: Alignment.topRight,
                image: AssetImage('assets/images/home-screen-top.png'))),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(appDefaultPadding,
                        appScreenSize.height * 0.07, appDefaultPadding, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Campus Tour",
                            style: GoogleFonts.openSans(
                                color: Colors.white, fontSize: 30)),
                        Text(
                          "Hold thy banner high!",
                          style: GoogleFonts.openSans(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: appScreenSize.height * 0.19),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(36))),
                  width: appScreenSize.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
                        child: Text(
                          "Explore",
                          style: GoogleFonts.openSans(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: ScrollSnapList(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          onItemFocus: _onItemFocus,
                          itemSize: 360,
                          itemBuilder: _buildListItem,
                          itemCount: data.length,
                          key: sslKeyCampus,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Text(
                          "Featured",
                          style: GoogleFonts.openSans(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: ScrollSnapList(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          onItemFocus: _onItemFocus,
                          itemSize: 360,
                          itemBuilder: _buildListItem,
                          itemCount: data.length,
                          key: sslKeyAdmin,
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
