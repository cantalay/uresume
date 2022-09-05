import 'package:flutter/material.dart';

import '../../../model/dimensions.dart';
import '../../widgets/HeaderInfoItems.dart';
import '../../widgets/ProfileSkills.dart';
import '../../widgets/ProfileEducations.dart';

class MobileListView extends StatelessWidget {
  const MobileListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListView(shrinkWrap: true, primary: false, children: [
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: mobileBodyPaddingMap['left']!,
              right: mobileBodyPaddingMap['right']!,
              top: mobileBodyPaddingMap['top']!,
              bottom: mobileBodyPaddingMap['bottom']!),
          child: const HeaderInfoItems(),
        ),
        smallPanelSeperator(),
        const ProfileSkills(
          paddingMap: mobileBodyPaddingMap,
        ),
        smallPanelSeperator(),
        Padding(
          padding: EdgeInsets.only(
              left: mobileBodyPaddingMap['left']!,
              right: mobileBodyPaddingMap['right']!,
              top: mobileBodyPaddingMap['top']!,
              bottom: mobileBodyPaddingMap['bottom']!),
          child: ProfileEducations(),
        ),
        smallPanelSeperator(),
      ]),
    );
  }
}
