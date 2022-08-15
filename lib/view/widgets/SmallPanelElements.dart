import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../model/dimensions.dart';

Widget smallPanelElements() {
  return ListView.separated(
      controller: ScrollController(),
      separatorBuilder: (context, index) => smallPanelSeperator(context),
      itemCount: 3,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            panelTitle("this is main title".toUpperCase()),
            const SizedBox(
              height: 20.0,
            ),
            smallPanelList(),
          ],
        );
      });
}

Column smallPanelSeperator(BuildContext context) {
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

ListView smallPanelList() {
  return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 15.0),
      itemCount: 2,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            panelSubTitle("this is small title".toUpperCase()),
            const SizedBox(
              height: 5.0,
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return panelText("this is small text detail");
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
    text,
    overflow: TextOverflow.visible,
    textAlign: TextAlign.start,
    style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w400, fontSize: 20.0, letterSpacing: 2.1),
  );
}

Text panelSubTitle(text) {
  return Text(
    text,
    overflow: TextOverflow.visible,
    textAlign: TextAlign.start,
    style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w400, fontSize: 12.0, letterSpacing: 2.1),
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