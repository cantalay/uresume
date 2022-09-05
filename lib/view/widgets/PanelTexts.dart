
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text panelTitle(text) {
  return Text(
    text.toString().toUpperCase(),
    overflow: TextOverflow.visible,
    textAlign: TextAlign.start,
    style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w600, fontSize: 20.0, letterSpacing: 2.0),
  );
}

Text panelSubTitle(text) {
  return Text(
    text.toString().toUpperCase(),
    overflow: TextOverflow.visible,
    textAlign: TextAlign.start,
    style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w700, fontSize: 12.0, letterSpacing: 1.8),
  );
}

Text panelText(text) {
  return Text(
    text,
    overflow: TextOverflow.visible,
    style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500, fontSize: 12.0, letterSpacing: 1.5),
  );
}