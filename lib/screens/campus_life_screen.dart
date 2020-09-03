import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wvsu_tour_app/config/app.dart';

class CampusLifeScreen extends StatefulWidget {
  CampusLifeScreen({Key key}) : super(key: key);

  @override
  _CampusLifeScreenState createState() => _CampusLifeScreenState();
}

class _CampusLifeScreenState extends State<CampusLifeScreen> {
  @override
  Widget build(BuildContext context) {
    Size appScreenSize = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: appPrimaryColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(appDefaultPadding,
                    appScreenSize.height * 0.07, appDefaultPadding, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Campus Life",
                        style: GoogleFonts.openSans(
                            color: Colors.white, fontSize: 30)),
                    Text(
                      'What it feels to be a "Taga-West"',
                      style: GoogleFonts.openSans(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
