import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wvsu_tour_app/config/app.dart';

class ThankyouFrontlinersScreen extends StatefulWidget {
  ThankyouFrontlinersScreen({Key key}) : super(key: key);

  @override
  _ThankyouFrontlinersScreenState createState() =>
      _ThankyouFrontlinersScreenState();
}

class _ThankyouFrontlinersScreenState extends State<ThankyouFrontlinersScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appPrimaryColor,
        image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
            image: AssetImage('assets/images/frontliners-bg.png')),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                '"Salamat"',
                style: GoogleFonts.openSans(color: Colors.white, fontSize: 40),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: appDefaultPadding + 30.0),
                child: Text(
                  "A special screen for our dedicated frontliners! Thank you for all your sacrifices! Double tap the heart to send a thank you to our modern heroes!",
                  style: GoogleFonts.openSans(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Feather.heart,
                    color: Colors.white,
                    size: 60,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("1,000",
                      style: GoogleFonts.openSans(
                          fontSize: 60, color: Colors.white))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
              ),
            ],
          ),
          Positioned(
              left: MediaQuery.of(context).size.width * 0.33,
              top: MediaQuery.of(context).size.height * 0.6,
              child: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 130,
                  ),
                  onPressed: () {}))
        ],
      ),
    );
  }
}
