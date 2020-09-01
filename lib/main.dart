import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                              padding: EdgeInsets.all(40),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Column(children: [
                                        Text("Hello Taga-West!",
                                            style: GoogleFonts.openSans(
                                                color: Color(0xFF106DCF),
                                                fontSize: 25,
                                                fontWeight: FontWeight.w500)),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        WebsafeSvg.asset('assets/icon/icon.svg',
                                            height: 110),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text("West Visayas State University",
                                            style: GoogleFonts.openSans(
                                              color: Color(0xFF106DCF),
                                              fontSize: 17,
                                            )),
                                        Text("Mobile Tour",
                                            style: GoogleFonts.openSans(
                                              color: Color(0xFF106DCF),
                                              fontSize: 25,
                                            )),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: FlatButton(
                                              color: Color(0xFF075BB3),
                                              padding: EdgeInsets.fromLTRB(
                                                  30, 15, 25, 15),
                                              onPressed: () {},
                                              child: Text(
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
                                          child: FlatButton(
                                              color: Color(0xFF075BB3),
                                              padding: EdgeInsets.fromLTRB(
                                                  30, 15, 25, 15),
                                              onPressed: () {},
                                              child: Text(
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
                          child: Text(
                              "By creating or logging into an account, you are agreeing with our Privacy Policy.",
                              style: GoogleFonts.openSans(color: Colors.white)))
                    ])
              ],
            )));
  }
}
