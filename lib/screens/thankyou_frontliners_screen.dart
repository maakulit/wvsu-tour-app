import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Thank you Frontliners!",
            style: GoogleFonts.openSans(color: Color(0xFF000000)),
          ),
        ),
        body: Text("data"),
      ),
    );
  }
}
