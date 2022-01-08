import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const mPrimaryColor = Colors.purple;
const mSecondaryColor = Color(0xff0c9869);
const mTextColor = Colors.black;
const mBackgroundColor = Color(0xfff9f8fd);
const mColorTest = Colors.purple;
const mColorBlanco = Colors.white;
const mColorNegro = Colors.black;
final mColorSombra = Colors.black.withOpacity(0.2);

const double kDefaultPadding = 20.0;

class MyTheme {
  static ThemeData get base {
    return ThemeData(
        primaryColor: mPrimaryColor,
        //Esquema de colores para el appBar
        appBarTheme: const AppBarTheme(
          backgroundColor: mPrimaryColor,
          foregroundColor: Colors.white, //here you can give the text color
          // elevation: 0 // si hay o no sombra
        ),
        textTheme: TextTheme(
            headline1: GoogleFonts.getFont('Dancing Script',
                fontSize: 20, fontWeight: FontWeight.normal),
            headline2:
                GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 20),
            headline3: GoogleFonts.nunito(fontSize: 20, color: mColorBlanco),
            bodyText1:
                const TextStyle(color: Colors.black), //para enfatizar texto
            bodyText2: const TextStyle(
                color: mTextColor, fontSize: 20) //para texto del body
            ));
  }
}

BoxDecoration estiloBoton() {
  return BoxDecoration(
      gradient: LinearGradient(colors: [Colors.purple.shade200, mPrimaryColor]),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
            color: mColorSombra, offset: const Offset(4, 6), blurRadius: 10)
      ]);
}

BoxDecoration contenedorEstiloCircular() {
  return BoxDecoration(
      shape: BoxShape.circle, color: Colors.white.withOpacity(0.2));
}
