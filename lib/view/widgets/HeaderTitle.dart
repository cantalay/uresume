import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/dimensions.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle(
      {Key? key, required this.userFontSize, required this.titleFontSize})
      : super(key: key);

  final double userFontSize;
  final double titleFontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flex(
          direction: MediaQuery.of(context).size.width > 900.0
              ? Axis.horizontal
              : Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userInfo['name'].toString().toUpperCase(),
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: userFontSize,
                  color: Colors.black,
                  letterSpacing: 2.1),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(userInfo['surname'].toString().toUpperCase(),
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    fontSize: userFontSize,
                    letterSpacing: 2.1)),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width > 900.0 ? 10.0 : 2.0,
        ),
        Text(userInfo['title'].toString().toUpperCase(),
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w200,
                color: Colors.black,
                fontSize: titleFontSize,
                letterSpacing: 2.1)),
        if (MediaQuery.of(context).size.width > 100.0) ...[
          SizedBox(
            height: MediaQuery.of(context).size.width > 900.0 ? 10.0 : 5.0,
          ),
          Row(
            mainAxisAlignment: MediaQuery.of(context).size.width > 900.0
                ? MainAxisAlignment.start
                : MainAxisAlignment.spaceBetween,
            children: [
              for (var item in skillItems.keys.toList())
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: Tooltip(
                    message: item,
                    child: Icon(
                      skillItems[item],
                      size: MediaQuery.of(context).size.width > 900.0 ? 20 : 18,
                    ),
                  ),
                )
            ],
          )
        ]
      ],
    );
  }
}
