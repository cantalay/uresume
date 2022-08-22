import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../model/dimensions.dart';

Widget smallPanelElements() {
  return ListView.separated(
      controller: ScrollController(),
      separatorBuilder: (context, index) => smallPanelSeperator(),
      itemCount: userDetailMap.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            panelTitle(userDetailMap[index].keys.toList().first),
            const SizedBox(
              height: 20.0,
            ),
            smallPanelList(userDetailMap[index][userDetailMap[index].keys.toList().first]),
          ],
        );
      });
}

Column smallPanelSeperator() {
  return Column(
    children: [
      const SizedBox(height: 40.0),
      Divider(endIndent: 150.0,),
      const SizedBox(
        height: 40.0,
      )
    ],
  );
}

ListView smallPanelList(detail) {
  return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 15.0),
      itemCount: detail.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            panelSubTitle(detail[index]['title'].toUpperCase()),
            panelText(detail[index]['subtitle'].toUpperCase()),
            const SizedBox(
              height: 5.0,
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: detail[index]['detail'].length,
              shrinkWrap: true,
              itemBuilder: (context, innerIndex) {
                return panelText(detail[index]['detail'][innerIndex]);
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 5.0,
              ),
            ),
          ],
        );
      });
}

Text panelTitle(text) {
  return Text(
    text.toString().toUpperCase(),
    overflow: TextOverflow.visible,
    textAlign: TextAlign.start,
    style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500, fontSize: 20.0, letterSpacing: 2.1),
  );
}

Text panelSubTitle(text) {
  return Text(
    text.toString().toUpperCase(),
    overflow: TextOverflow.visible,
    textAlign: TextAlign.start,
    style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500, fontSize: 12.0, letterSpacing: 2.1),
  );
}

Text panelText(text) {
  return Text(
    text,
    overflow: TextOverflow.visible,
    style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w300, fontSize: 12.0, letterSpacing: 2.1),
  );
}