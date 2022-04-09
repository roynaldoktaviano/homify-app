import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryBlue = Color(0xff011F6D);
Color primaryYellow = Color(0xffFFAA4D);
Color secondaryBlue = Color(0xff045497);
Color tersierBlue = Color(0xff5189C6);
Color gray = Color(0xff7A7E86);
Color white = Color(0xffFFFFFF);
Color black = Color(0xff000000);
Color transparant = Color.fromARGB(0, 255, 255, 255);

FontWeight medium = FontWeight.w500;
FontWeight light = FontWeight.w300;
FontWeight bold = FontWeight.w700;
FontWeight regular = FontWeight.w400;

TextStyle titleBlue = GoogleFonts.poppins(
  color: primaryBlue,
  fontWeight: medium,
);

TextStyle yellowText = GoogleFonts.poppins(
  color: primaryYellow,
  fontWeight: medium,
);

TextStyle grayText = GoogleFonts.poppins(
  color: gray,
);
