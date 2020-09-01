import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF106DCF),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/images/login-bg.png'))),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Stack(
                children: [
                  Positioned(
                      top: 40,
                      left: 20,
                      child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {},
                        color: Colors.white,
                      )),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(50),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.all(30),
                                        child: Column(children: [
                                          WebsafeSvg.asset(
                                              'assets/icon/icon.svg',
                                              height: 110),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text("West Visayas State University",
                                              style: GoogleFonts.openSans(
                                                color: Color(0xFF106DCF),
                                                fontSize: 14,
                                              )),
                                          Text("Campus Tour",
                                              style: GoogleFonts.pattaya(
                                                  color: Color(0xFF106DCF),
                                                  fontSize: 35,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1)),
                                          SizedBox(
                                            height: 50,
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: FlatButton.icon(
                                                color: Color(0xFF075BB3),
                                                padding: EdgeInsets.fromLTRB(
                                                    25, 15, 25, 15),
                                                onPressed: () {},
                                                icon:
                                                    Icon(FontAwesome.facebook),
                                                label: Text(
                                                  "Continue with Facebook",
                                                  style: GoogleFonts.openSans(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                                textColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)))),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: FlatButton.icon(
                                                color: Color(0xFF075BB3),
                                                padding: EdgeInsets.fromLTRB(
                                                    25, 15, 25, 15),
                                                onPressed: () {},
                                                icon: Icon(FontAwesome.google),
                                                label: Text(
                                                  "Continue with Google",
                                                  style: GoogleFonts.openSans(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                                textColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)))),
                                          ),
                                        ]))),
                              )
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text:
                                      "Taga-West! By creating or logging into an account, you are agreeing with our. ",
                                  style: GoogleFonts.openSans(
                                      color: Colors.white)),
                              TextSpan(
                                  text: "Privacy Policy",
                                  style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                            ])))
                      ])
                ],
              ))),
    );
  }
}
