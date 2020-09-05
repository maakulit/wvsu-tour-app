import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:wvsu_tour_app/config/app.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen({Key key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    Size appScreenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: appPrimaryColor,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: appPrimaryColor),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(appDefaultPadding,
                            appScreenSize.height * 0.07, appDefaultPadding, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("About",
                                style: GoogleFonts.openSans(
                                    color: Colors.white, fontSize: 30)),
                            Text(
                              'Information about this app',
                              style: GoogleFonts.openSans(color: Colors.white),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ))
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
                              "App User",
                              style: GoogleFonts.openSans(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: appDefaultPadding),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: CircularProfileAvatar(
                                        'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg', //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                                        radius: 50, // sets radius, default 50.0
                                        backgroundColor: Colors
                                            .transparent, // sets background color, default Colors.white
                                        borderWidth:
                                            10, // sets border, default 0.0
                                        initialsText: Text(
                                          "AU",
                                          style: TextStyle(
                                              fontSize: 40,
                                              color: Colors.white),
                                        ), // sets initials text, set your own style, default Text('')
                                        borderColor: Colors
                                            .transparent, // sets border color, default Colors.white
                                        cacheImage:
                                            true, // allow widget to cache image against provided url
                                        onTap: () {
                                          print('adil');
                                        }, // sets on tap
                                        showInitialTextAbovePicture:
                                            true, // setting it true will show initials text above profile picture, default false
                                      ),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "User Name Here",
                                            style: GoogleFonts.openSans(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text("Connected via Google"),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        width: 10,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: IconButton(
                                          tooltip: "Logout",
                                          icon: Icon(Feather.log_out),
                                          onPressed: () {
                                            Navigator.pushReplacementNamed(
                                                context, "/");
                                          }),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2.0,
                            height: 30,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                child: WebsafeSvg.asset("assets/icon/icon.svg",
                                    height: 90),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                child: Text(
                                  "WVSU Campus Tour",
                                  style: GoogleFonts.openSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                child: Text(
                                  "WVSU Campus Tour is a mobile app developed by the volunteers from the College of Information and Communications Technology, Main Campus. It aims to mitigate the effect of the pandemic for students who want to get more familiar with the University.",
                                  style: GoogleFonts.openSans(),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                            child: Text(
                              "Volunteers",
                              style: GoogleFonts.openSans(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                ),
                                CircularProfileAvatar(
                                  'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg', //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                                  radius: 40, // sets radius, default 50.0
                                  backgroundColor: Colors
                                      .transparent, // sets background color, default Colors.white
                                  borderWidth: 10, // sets border, default 0.0
                                  initialsText: Text(
                                    "AU",
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.white),
                                  ), // sets initials text, set your own style, default Text('')
                                  borderColor: Colors
                                      .transparent, // sets border color, default Colors.white
                                  cacheImage:
                                      true, // allow widget to cache image against provided url
                                  onTap: () {
                                    print('adil');
                                  }, // sets on tap
                                  showInitialTextAbovePicture:
                                      true, // setting it true will show initials text above profile picture, default false
                                ),
                                CircularProfileAvatar(
                                  'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg', //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                                  radius: 40, // sets radius, default 50.0
                                  backgroundColor: Colors
                                      .transparent, // sets background color, default Colors.white
                                  borderWidth: 10, // sets border, default 0.0
                                  initialsText: Text(
                                    "AU",
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.white),
                                  ), // sets initials text, set your own style, default Text('')
                                  borderColor: Colors
                                      .transparent, // sets border color, default Colors.white
                                  cacheImage:
                                      true, // allow widget to cache image against provided url
                                  onTap: () {
                                    print('adil');
                                  }, // sets on tap
                                  showInitialTextAbovePicture:
                                      true, // setting it true will show initials text above profile picture, default false
                                ),
                                CircularProfileAvatar(
                                  'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg', //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                                  radius: 40, // sets radius, default 50.0
                                  backgroundColor: Colors
                                      .transparent, // sets background color, default Colors.white
                                  borderWidth: 10, // sets border, default 0.0
                                  initialsText: Text(
                                    "AU",
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.white),
                                  ), // sets initials text, set your own style, default Text('')
                                  borderColor: Colors
                                      .transparent, // sets border color, default Colors.white
                                  cacheImage:
                                      true, // allow widget to cache image against provided url
                                  onTap: () {
                                    print('adil');
                                  }, // sets on tap
                                  showInitialTextAbovePicture:
                                      true, // setting it true will show initials text above profile picture, default false
                                ),
                                CircularProfileAvatar(
                                  'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg', //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                                  radius: 40, // sets radius, default 50.0
                                  backgroundColor: Colors
                                      .transparent, // sets background color, default Colors.white
                                  borderWidth: 10, // sets border, default 0.0
                                  initialsText: Text(
                                    "AU",
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.white),
                                  ), // sets initials text, set your own style, default Text('')
                                  borderColor: Colors
                                      .transparent, // sets border color, default Colors.white
                                  cacheImage:
                                      true, // allow widget to cache image against provided url
                                  onTap: () {
                                    print('adil');
                                  }, // sets on tap
                                  showInitialTextAbovePicture:
                                      true, // setting it true will show initials text above profile picture, default false
                                ),
                                CircularProfileAvatar(
                                  'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg', //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                                  radius: 40, // sets radius, default 50.0
                                  backgroundColor: Colors
                                      .transparent, // sets background color, default Colors.white
                                  borderWidth: 10, // sets border, default 0.0
                                  initialsText: Text(
                                    "AU",
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.white),
                                  ), // sets initials text, set your own style, default Text('')
                                  borderColor: Colors
                                      .transparent, // sets border color, default Colors.white
                                  cacheImage:
                                      true, // allow widget to cache image against provided url
                                  onTap: () {
                                    print('adil');
                                  }, // sets on tap
                                  showInitialTextAbovePicture:
                                      true, // setting it true will show initials text above profile picture, default false
                                ),
                                CircularProfileAvatar(
                                  'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg', //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                                  radius: 40, // sets radius, default 50.0
                                  backgroundColor: Colors
                                      .transparent, // sets background color, default Colors.white
                                  borderWidth: 10, // sets border, default 0.0
                                  initialsText: Text(
                                    "AU",
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.white),
                                  ), // sets initials text, set your own style, default Text('')
                                  borderColor: Colors
                                      .transparent, // sets border color, default Colors.white
                                  cacheImage:
                                      true, // allow widget to cache image against provided url
                                  onTap: () {
                                    print('adil');
                                  }, // sets on tap
                                  showInitialTextAbovePicture:
                                      true, // setting it true will show initials text above profile picture, default false
                                ),
                                CircularProfileAvatar(
                                  'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg', //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                                  radius: 40, // sets radius, default 50.0
                                  backgroundColor: Colors
                                      .transparent, // sets background color, default Colors.white
                                  borderWidth: 10, // sets border, default 0.0
                                  initialsText: Text(
                                    "AU",
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.white),
                                  ), // sets initials text, set your own style, default Text('')
                                  borderColor: Colors
                                      .transparent, // sets border color, default Colors.white
                                  cacheImage:
                                      true, // allow widget to cache image against provided url
                                  onTap: () {
                                    print('adil');
                                  }, // sets on tap
                                  showInitialTextAbovePicture:
                                      true, // setting it true will show initials text above profile picture, default false
                                ),
                                CircularProfileAvatar(
                                  'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg', //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                                  radius: 40, // sets radius, default 50.0
                                  backgroundColor: Colors
                                      .transparent, // sets background color, default Colors.white
                                  borderWidth: 10, // sets border, default 0.0
                                  initialsText: Text(
                                    "AU",
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.white),
                                  ), // sets initials text, set your own style, default Text('')
                                  borderColor: Colors
                                      .transparent, // sets border color, default Colors.white
                                  cacheImage:
                                      true, // allow widget to cache image against provided url
                                  onTap: () {
                                    print('adil');
                                  }, // sets on tap
                                  showInitialTextAbovePicture:
                                      true, // setting it true will show initials text above profile picture, default false
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2,
                            height: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                            child: Text(
                              "Privacy Policy",
                              style: GoogleFonts.openSans(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: Text(
                              "Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic. Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens dandelion okra wakame tomato. Dandelion cucumber earthnut pea peanut soko zucchini. Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
                              style: GoogleFonts.openSans(),
                            ),
                          ),
                          SizedBox(height: 20)
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
