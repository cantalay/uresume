import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/dimensions.dart';

GridView headerInfoItems(BuildContext context) {
  double currentWidth = MediaQuery.of(context).size.width;
  int crossAxisCount = 2;
  if (currentWidth > infoTextMediumSize.toDouble()) {
    crossAxisCount = 3;
  }
  if (currentWidth > infoTextLargerSize.toDouble()) {
    crossAxisCount = 4;
  }
  return GridView.builder(
      primary: true,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisExtent: 40),
      itemCount: infoItems.length,
      itemBuilder: (contex, index) {
        return MediaQuery.of(context).size.width > mobileWidth ? headerTextInfo(
            infoItems[infoItems.keys.toList()[index]]['text'],
            infoItems[infoItems.keys.toList()[index]]['icon'],
            infoItems.keys.toList()[index]) :
        mobileHeaderTextInfo(
            infoItems[infoItems.keys.toList()[index]]['text'],
            infoItems[infoItems.keys.toList()[index]]['icon'],
            infoItems.keys.toList()[index]);
      });
}


Row headerTextInfo(String infoTitle, IconData infoIcon, String infoName) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Flexible(
        child: Text(
          infoTitle,
          overflow: TextOverflow.visible,
          textAlign: TextAlign.end,
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400, fontSize: 15.0),
        ),
      ),
      const SizedBox(
        width: 18.0,
      ),
      Tooltip(
        message: infoName,
        child: Icon(
          infoIcon,
          size: 15.0,
        ),
      )
    ],
  );
}

Row mobileHeaderTextInfo(String infoTitle, IconData infoIcon, String infoName) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Tooltip(
        message: infoName,
        child: Icon(
          infoIcon,
          size: 10.0,
        ),
      ),
      const SizedBox(
        width: 9.0,
      ),Flexible(
        child: Text(
          infoTitle,
          overflow: TextOverflow.visible,
          textAlign: TextAlign.end,
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400, fontSize: 10.0),
        ),
      )
    ],
  );
}