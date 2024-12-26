import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
abstract class styles {
  static TextStyle getCairoTextStyle18() {
    return GoogleFonts.cairo(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white);
  }

  static TextStyle getCairoTextStyle14() {
    return GoogleFonts.cairo(
        fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff637381));
  }

  static TextStyle getCairoTextStyle12() {
    return GoogleFonts.cairo(
        fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white);
  }
}
