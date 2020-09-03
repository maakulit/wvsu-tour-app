import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wvsu_tour_app/config/app.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size appScreenSize = MediaQuery.of(context).size;
    return Container(
        child: Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: SizedBox(
              width: appScreenSize.width,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: Container(
                          decoration: BoxDecoration(
                              color: appPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Announcement Title",
                            style: GoogleFonts.openSans(
                                color: Color(0xFF000000), fontSize: 18),
                          ),
                          Text("Announcement description here"),
                          Divider(),
                          Row(
                            children: [
                              Icon(
                                SimpleLineIcons.clock,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("1 hour ago")
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
