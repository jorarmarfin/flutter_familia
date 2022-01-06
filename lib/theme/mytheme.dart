import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const mPrimaryColor = Colors.purple;
const mSecondaryColor = Color(0xff0c9869);
const kTextColor = Color(0xff3c4046);
const kBackgroundColor = Color(0xfff9f8fd);

const double kDefaultPadding = 20.0;

class MyTheme {
  static ThemeData get base {
    return ThemeData(
        primaryColor: mPrimaryColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: mPrimaryColor,
          secondary: mSecondaryColor,
        ), //Color de AppBar
        textTheme: TextTheme(
            headline1: GoogleFonts.getFont('Dancing Script',
                fontSize: 20, fontWeight: FontWeight.normal),
            headline2:
                GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 20),
            bodyText1:
                const TextStyle(color: Colors.black), //para enfatizar texto
            bodyText2: const TextStyle(
                color: mPrimaryColor, fontSize: 20) //para texto del body
            ));
  }
}
