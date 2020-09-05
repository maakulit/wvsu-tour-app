import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wvsu_tour_app/config/app.dart';

class AppLegalLinks extends StatelessWidget {
  const AppLegalLinks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/legal");
        },
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
              text:
                  "Taga West! By logging in or creating an account, you are agreeing with our ",
              style: GoogleFonts.openSans(color: appTextBodyColor)),
          TextSpan(
            text: "Terms and Conditions",
            style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold, color: appPrimaryColor),
          ),
          TextSpan(
              text: " and ",
              style: GoogleFonts.openSans(color: appTextBodyColor)),
          TextSpan(
            text: "Privacy Policy.",
            style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold, color: appPrimaryColor),
          )
        ])),
      ),
    );
  }
}
