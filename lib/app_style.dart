import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color sWhite = Color(0xffffffff);
const Color sSecondary = Color(0xffFFFFFF);

const Color sBlack = Color(0xff111111);
const Color sNavigatoinClick = Colors.black;
const Color sGrey = Color.fromARGB(255, 112, 112, 112);
const Color sPrimary = Color(0xffFFB347);
const Color sBackground =Color(0xffF1F1F1);

List<Color> cardColor =[
Colors.white,
Colors.red.shade100,
Colors.orange.shade100,
Colors.green.shade100,
Colors.blue.shade100,
Colors.yellow.shade100,
Colors.pink.shade100,
Colors.blueGrey.shade100,

];

const double sBorderRadius = 100.0;
const double sPaddinHorizontal = 22.0;


final sEncodeSansBold = GoogleFonts.encodeSans(
    fontWeight: FontWeight.w700
);

final sEncodeSansSemiBold = GoogleFonts.encodeSans(
    fontWeight: FontWeight.w600
);

final sEncodeSansMedium = GoogleFonts.encodeSans(
    fontWeight: FontWeight.w500
);

final sEncodeSansRegular = GoogleFonts.encodeSans(
    fontWeight: FontWeight.w400
);