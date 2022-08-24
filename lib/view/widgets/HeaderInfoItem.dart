import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../model/dimensions.dart';

GridView headerInfoItems(BuildContext context) {
  double currentWidth = MediaQuery.of(context).size.width;
  int crossAxisCount = 2;
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
        return currentWidth > mobileWidth ? headerTextInfo(
            infoItems[infoItems.keys.toList()[index]]['text'],
            infoItems[infoItems.keys.toList()[index]]['icon'],
            infoItems.keys.toList()[index],
          infoItems[infoItems.keys.toList()[index]].length > 2 ? infoItems[infoItems.keys.toList()[index]]['uri'] : null
        ) :
        mobileHeaderTextInfo(
            infoItems[infoItems.keys.toList()[index]]['text'],
            infoItems[infoItems.keys.toList()[index]]['icon'],
            infoItems.keys.toList()[index]);
      });
}


Row headerTextInfo(String infoTitle, IconData infoIcon, String infoName, uriElement) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Flexible(
        child: uriElement != null ? TextButton(
          onPressed: () => launchUrl(Uri(scheme: uriElement.keys.toList()[0], path: uriElement[uriElement.keys.toList()[0]])) ,
          child: Text(
            infoTitle,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.end,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400, fontSize: 15.0),
          ),
        ) : Text(
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