import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:wvsu_tour_app/config/app.dart';
import 'package:wvsu_tour_app/firebase/auth.dart';
import 'package:wvsu_tour_app/screens/facebook_auth_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.auth}) : super(key: key);

  final BaseAuth auth;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size appScreenSize = MediaQuery.of(context).size;

    void _showSnackbar(String message) {
      _scaffoldKey.currentState
          .showSnackBar(new SnackBar(content: new Text(message)));
    }

    _loginWithFacebook() async {
      UserCredential userCredential;
      String appid = "618815765675430";
      String redirectUri =
          "https://www.facebook.com/connect/login_success.html";
      String result = await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FacebookAuthWeb(
                    selectedUrl:
                        'https://www.facebook.com/dialog/oauth?client_id=$appid&redirect_uri=$redirectUri&response_type=token&scope=email,public_profile,',
                  ),
              maintainState: true));
      if (result != null) {
        try {
          final facebookAuthCred = FacebookAuthProvider.credential(result);
          userCredential =
              await widget.auth.signInWithCredentials(facebookAuthCred);
          _showSnackbar("Logged in with Facebook");
          print(userCredential.user.uid);
        } catch (e) {
          print(e);
          _showSnackbar("Failed to sign in with Facebook: ${e}");
        }
      }
    }

    void _loginInWithGoogle() async {
      try {
        UserCredential userCredential;

        final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final GoogleAuthCredential googleAuthCredential =
            GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        userCredential =
            await widget.auth.signInWithCredentials(googleAuthCredential);
        _showSnackbar("Logged in with Google");
        print(userCredential.user.uid);
      } catch (e) {
        print(e);
        _showSnackbar("Failed to sign in with Google: ${e}");
      }
    }

    return Container(
      child: Container(
          decoration: BoxDecoration(
              color: appPrimaryColor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/images/login-bg.png'))),
          child: Scaffold(
              key: _scaffoldKey,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    exit(0);
                  },
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.transparent,
              body: Stack(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: appScreenSize.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: appScreenSize.width * 0.15),
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
                                              height: 100),
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
                                                onPressed: () {
                                                  _loginWithFacebook();
                                                },
                                                icon: Icon(SimpleLineIcons
                                                    .social_facebook),
                                                label: Text(
                                                  "Login with Facebook",
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
                                                onPressed: () {
                                                  // widget.auth.signOut();
                                                  _loginInWithGoogle();
                                                },
                                                icon: Icon(SimpleLineIcons
                                                    .social_google),
                                                label: Text(
                                                  "Login with Google",
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
                            padding: EdgeInsets.all(40),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text:
                                      "Taga-West! By creating or logging into an account, you are agreeing with our ",
                                  style: GoogleFonts.openSans(
                                      color: Colors.white)),
                              TextSpan(
                                  text: "Privacy Policy.",
                                  style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                            ])))
                      ]),
                ],
              ))),
    );
  }
}
