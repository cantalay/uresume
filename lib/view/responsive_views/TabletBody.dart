import 'package:flutter/rendering.dart';
import 'package:uresume/model/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uresume/view/widgets/ProfileDescription.dart';

import '../widgets/HeaderInfoItem.dart';
import '../widgets/HeaderTitle.dart';
import '../widgets/SmallPanelElements.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: tabletBodyPaddingMap["top"]!,
                  left: tabletBodyPaddingMap["left"]!,
                  right: tabletBodyPaddingMap["right"]!,
                  bottom: tabletBodyPaddingMap["bottom"]!),
              child: AspectRatio(
                aspectRatio: tabletAspectRatio,
                child: Row(
                  children: [
                    Expanded(
                      child: headerTitle(context, 40.0, 15.0),
                    ),
                    Expanded(
                      child: headerInfoItems(context),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(indent: 60.0, endIndent: 60.0),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: tabletBodyPaddingMap["left"]!,
                    left: tabletBodyPaddingMap["left"]!,
                    right: tabletBodyPaddingMap["right"]!,
                    bottom: tabletBodyPaddingMap["bottom"]!),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.33,
                      alignment: Alignment.topLeft,
                      child: smallPanelElements(),
                    ),
                    VerticalDivider(indent: tabletBodyPaddingMap["left"]!, endIndent: 60.0),
                    Flexible(
                      child: largePanelElement(tabletBodyPaddingMap),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
