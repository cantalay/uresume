import 'package:faker/faker.dart';
import 'package:uresume/model/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uresume/view/widgets/HeaderTitle.dart';
import 'package:uresume/view/widgets/SmallPanelElements.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color.fromRGBO(189, 224, 254, 0.8),
            expandedHeight: 200.0,
            toolbarHeight: 150.0,
            elevation: 0,
            floating: true,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(
                  left: mobileBodyPaddingMap['left']!,
                  right: mobileBodyPaddingMap['right']!),
              expandedTitleScale: 1,
              title: headerTitle(context, 35.0, 12.0),
            ),
          ),
          SliverToBoxAdapter(
            child: ListView(shrinkWrap: true, primary: false, children: [
              SizedBox(height: 20.0,),
              Padding(
                padding: EdgeInsets.only(
                    left: mobileBodyPaddingMap['left']!,
                    right: mobileBodyPaddingMap['right']!,
                    top: mobileBodyPaddingMap['top']!,
                    bottom: mobileBodyPaddingMap['bottom']!),
                child: headerInfoItems(context),
              ),
              smallPanelSeperator(),
              largePanelElement(mobileBodyPaddingMap),
              smallPanelSeperator(),
              Padding(
                padding: EdgeInsets.only(
                    left: mobileBodyPaddingMap['left']!,
                    right: mobileBodyPaddingMap['right']!,
                    top: mobileBodyPaddingMap['top']!,
                    bottom: mobileBodyPaddingMap['bottom']!),
                child: smallPanelElements(),
              ),smallPanelSeperator(),
            ]),
          )
        ],
      ),
    );
  }
}
