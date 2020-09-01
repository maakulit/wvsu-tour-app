import 'dart:math';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WVSU Campus Tour',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> data = [];
  int _focusedIndex = 0;

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 30; i++) {
      data.add(Random().nextInt(100) + 1);
    }
  }

  Widget _buildListItem(BuildContext context, int index) {
    //horizontal
    return Container(
      width: 330,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF106DCF),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            height: 200,
            width: 300,
            child: null,
          )
        ],
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
        backgroundColor: Color(0xFFF3F3F3),
        bottomNavigationBar: ConvexAppBar(
          color: Color(0xFF106DCF),
          backgroundColor: Colors.white,
          activeColor: Color(0xFF106DCF),

          items: [
            TabItem(
              icon: Icons.notifications,
            ),
            TabItem(
              icon: Icons.navigation,
            ),
            TabItem(
              icon: Icons.favorite,
            ),
          ],
          initialActiveIndex: 2, //optional, default as 0
          onTap: (int i) => print('click index=$i'),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF106DCF),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(40)),
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          alignment: Alignment.bottomRight,
                          image:
                              AssetImage('assets/images/home-screen-top.png'))),
                  child: SizedBox(
                      width: double.infinity,
                      height: 230,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(40, 50, 40, 0),
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
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4F4F4F)),
                          )),
                      SizedBox(
                        width: double.infinity,
                        height: 220,
                        child: ScrollSnapList(
                          initialIndex: 2,
                          onItemFocus: _onItemFocus,
                          itemSize: 35,
                          itemBuilder: _buildListItem,
                          itemCount: data.length,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Admin Offices",
                            style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4F4F4F)),
                          )),
                      SizedBox(
                        width: double.infinity,
                        height: 220,
                        child: ScrollSnapList(
                          initialIndex: 2,
                          onItemFocus: _onItemFocus,
                          itemSize: 35,
                          itemBuilder: _buildListItem,
                          itemCount: data.length,
                        ),
                      ),
                    ],
                  ),
                )
              ])
            ],
          ),
        ));
  }
}
