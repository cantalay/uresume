import 'package:uresume/model/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uresume/view/widgets/HeaderInfoItem.dart';
import 'package:uresume/view/widgets/ProfileDescription.dart';

import '../widgets/HeaderTitle.dart';
import '../widgets/SmallPanelElements.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        body: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: maxHeaderSize),
              child: Padding(
                padding: EdgeInsets.only(
                    top: desktopBodyPaddingMap["top"]!,
                    left: desktopBodyPaddingMap["left"]!,
                    right: desktopBodyPaddingMap["right"]!,
                    bottom: desktopBodyPaddingMap["bottom"]!),
                child: AspectRatio(
                  aspectRatio: desktopAspectRatio,
                  child: Row(
                    children: [
                      Expanded(
                        child: headerTitle(context, 45.0, 18.0)
                      ),
                      Expanded(
                        child: headerInfoItems(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(indent: 60.0, endIndent: 60.0),
            Padding(
              padding: EdgeInsets.only(
                  top: desktopBodyPaddingMap["left"]!,
                  left: desktopBodyPaddingMap["left"]!,
                  right: desktopBodyPaddingMap["right"]!,
                  bottom: desktopBodyPaddingMap["bottom"]!),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      alignment: Alignment.topLeft,
                      child: smallPanelElements(),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: Container(color: Colors.cyan,child: profileItem(),),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }


}
