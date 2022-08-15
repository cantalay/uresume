import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column profileItem() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('PROFILE',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w300,
              fontSize: 20.0,
              letterSpacing: 2.1)),
      SizedBox(height: 20.0,),
      Text(Faker().lorem.sentences(5).join(),
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w300,
              fontSize: 12.0,
              letterSpacing: 2.1))
    ],
  );
}