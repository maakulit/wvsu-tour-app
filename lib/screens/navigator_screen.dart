import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:websafe_svg/websafe_svg.dart';
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

    print(_focusedIndex);
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 350,
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
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          decoration: BoxDecoration(
              color: appPrimaryColor,
              image: DecorationImage(
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomRight,
                  image: AssetImage('assets/images/home-screen-top.png'))),
          child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: appDefaultPadding, vertical: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              WebsafeSvg.asset('assets/icon/icon-light.svg',
                                  height: 70),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("West Visayas State University",
                                      style: GoogleFonts.openSans(
                                          color: Colors.white)),
                                  Text("Campus Tour",
                                      style: GoogleFonts.pattaya(
                                          color: Colors.white, fontSize: 30))
                                ],
                              )
                            ],
                          ),
                        ],
                      )),
                  Positioned(
                      top: appScreenSize.height * 0.19,
                      child: SizedBox(
                          width: appScreenSize.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: appScaffoldBackgroundColor,
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(36))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("datsdsa"),
                                    Text("datsdsa"),
                                  ],
                                ),
                              )
                            ],
                          )))
                ],
              )),
        ),
      ]),
    );
  }
}
