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
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 350,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
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
    return Scaffold(
        backgroundColor: appScaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  decoration: BoxDecoration(
                      color: appPrimaryColor,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(36)),
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          alignment: Alignment.bottomRight,
                          image:
                              AssetImage('assets/images/home-screen-top.png'))),
                  child: SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(40, 40, 40, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WebsafeSvg.asset('assets/icon/icon-light.svg',
                                  height: 80),
                              SizedBox(
                                height: 10,
                              ),
                              Text("West Visayas State University",
                                  style: GoogleFonts.openSans(
                                      color: Colors.white)),
                              Text("Campus Tour",
                                  style: GoogleFonts.pattaya(
                                      color: Colors.white, fontSize: 30))
                            ],
                          ))),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Campuses",
                            style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF4F4F4F)),
                          )),
                      SizedBox(
                        width: double.infinity,
                        height: 220,
                        child: ScrollSnapList(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          onItemFocus: _onItemFocus,
                          itemSize: 360,
                          itemBuilder: _buildListItem,
                          itemCount: data.length,
                          key: sslKeyCampus,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Academic Buildings",
                            style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF4F4F4F)),
                          )),
                      SizedBox(
                        width: double.infinity,
                        height: 220,
                        child: ScrollSnapList(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          onItemFocus: _onItemFocus,
                          itemSize: 360,
                          itemBuilder: _buildListItem,
                          itemCount: data.length,
                          key: sslKeyAcad,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Administrative Buildings",
                            style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF4F4F4F)),
                          )),
                      SizedBox(
                        width: double.infinity,
                        height: 220,
                        child: ScrollSnapList(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          onItemFocus: _onItemFocus,
                          itemSize: 360,
                          itemBuilder: _buildListItem,
                          itemCount: data.length,
                          key: sslKeyAdmin,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Landmarks and Symbols",
                            style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF4F4F4F)),
                          )),
                      SizedBox(
                        width: double.infinity,
                        height: 220,
                        child: ScrollSnapList(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          onItemFocus: _onItemFocus,
                          itemSize: 360,
                          itemBuilder: _buildListItem,
                          itemCount: data.length,
                          key: sslKeyLandmarksSymbols,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Staff",
                            style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF4F4F4F)),
                          )),
                      SizedBox(
                        width: double.infinity,
                        height: 220,
                        child: ScrollSnapList(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          onItemFocus: _onItemFocus,
                          itemSize: 360,
                          itemBuilder: _buildListItem,
                          itemCount: data.length,
                          key: sslKeyStaff,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
              Positioned(
                  top: 30,
                  right: appDefaultPadding,
                  child: IconButton(
                      icon: Icon(Feather.log_out),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/");
                      })),
            ],
          ),
        ));
  }
}
