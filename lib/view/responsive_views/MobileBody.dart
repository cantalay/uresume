import 'package:faker/faker.dart';
import 'package:uresume/model/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uresume/view/widgets/HeaderTitle.dart';

import '../widgets/HeaderInfoItem.dart';
import '../widgets/ProfileDescription.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 0.0;
    if (MediaQuery.of(context).size.width < 300) {
      aspectRatio = miniMobileAspectRatio;
    } else if (MediaQuery.of(context).size.width < 500) {
      aspectRatio = mobileAspectRatio;
    } else {
      aspectRatio = maxiMobileAspectRatio;
    }
    return Scaffold(
        backgroundColor: Colors.white70,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: maxMobileHeaderSize),
              child: Padding(
                padding: EdgeInsets.only(
                    top: mobileBodyPaddingMap["top"]!,
                    left: mobileBodyPaddingMap["left"]!,
                    right: mobileBodyPaddingMap["right"]!,
                    bottom: mobileBodyPaddingMap["bottom"]!),
                child: AspectRatio(
                  aspectRatio: aspectRatio,
                  child: Column(
                    children: [
                      Expanded(
                        child: headerTitle(context, 35.0, 12.0),
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

            profileItem(),
          ],
        ));
  }
}
