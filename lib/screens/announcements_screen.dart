import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wvsu_tour_app/components/announcement_card.dart';
import 'package:wvsu_tour_app/config/app.dart';

class AnnouncementsScreen extends StatefulWidget {
  AnnouncementsScreen({Key key}) : super(key: key);

  @override
  _AnnouncementsScreenState createState() => _AnnouncementsScreenState();
}

class _AnnouncementsScreenState extends State<AnnouncementsScreen> {
  @override
  Widget build(BuildContext context) {
    Size appScreenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: appPrimaryColor,
        body: SingleChildScrollView(
          child: Container(
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
                      Text("Announcements",
                          style: GoogleFonts.openSans(
                              color: Colors.white, fontSize: 30)),
                      Text(
                        'Be informed!',
                        style: GoogleFonts.openSans(color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AnnouncementCard(),
                      AnnouncementCard(),
                      AnnouncementCard(),
                      AnnouncementCard(),
                      AnnouncementCard(),
                      AnnouncementCard(),
                      AnnouncementCard(),
                      AnnouncementCard(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
