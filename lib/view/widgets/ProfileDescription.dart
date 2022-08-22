import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uresume/model/dimensions.dart';

import 'SmallPanelElements.dart';

Column profileItem() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      panelTitle("profile".toUpperCase()),
      SizedBox(
        height: 20.0,
      ),
      Text(profileDescription,
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w300, fontSize: 12.0, letterSpacing: 2.1))
    ],
  );
}

Widget largePanelElement(Map<String, double> paddingMap) {
  return Padding(
    padding: EdgeInsets.only(top: paddingMap['top']!, right: paddingMap['right']!, left: paddingMap['left']!, bottom: paddingMap['bottom']!),
    child: ListView(
      shrinkWrap: true,
      controller: ScrollController(),
      children: [
        profileItem(),
        largePanelSeperator(),
        panelTitle("experience".toUpperCase()),
        SizedBox(
          height: 20.0,
        ),
        largePanelElementList(),
      ],
    ),
  );
}

Column largePanelSeperator() {
  return Column(
    children: const [
      SizedBox(height: 40.0),
      Divider(
        endIndent: 150.0,
      ),
      SizedBox(
        height: 40.0,
      )
    ],
  );
}

ListView largePanelElementList() {
  return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 30.0),
      itemCount: userExperience.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            panelSubTitle(userExperience[index]['name']),
            SizedBox(height: 5.0,),
            Row(children: [
              panelSubTitleText(userExperience[index]['position']),
              SizedBox(
                width: 5.0,
              ),
              panelSubTitleText(userExperience[index]['startYear'].toString() + " - " + userExperience[index]['endYear'].toString())
            ]),
            const SizedBox(
              height: 5.0,
            ),panelText(userExperience[index]['detail']),
            const SizedBox(
              height: 8.0,
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: userExperience[index]['knowledges'].length,
              shrinkWrap: true,
              itemBuilder: (context, innerIndex) {
                return panelText("• " + userExperience[index]['knowledges'][innerIndex]);
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 2.0,
              ),
            ),
          ],
        );
      });
}

Text panelSubTitleText(text) {
  return Text(
    text.toString().toUpperCase(),
    overflow: TextOverflow.visible,
    textAlign: TextAlign.start,
    style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w300, fontSize: 12.0, letterSpacing: 2.1),
  );
}
