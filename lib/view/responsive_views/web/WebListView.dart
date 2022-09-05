import 'package:flutter/material.dart';

import '../../../model/dimensions.dart';
import '../../widgets/ProfileSkills.dart';
import '../../widgets/ProfileEducations.dart';

class WebListView extends StatelessWidget {
  const WebListView({
    Key? key,
    required this.currentWidth,
  }) : super(key: key);

  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: webPaddingMap["left"]!,
          left: webPaddingMap["left"]!,
          right: webPaddingMap["right"]!,
          bottom: webPaddingMap["bottom"]!),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: currentWidth < maxHeaderSize
                ? currentWidth * 0.30
                : maxHeaderSize * 0.30,
            alignment: Alignment.topLeft,
            child: ProfileEducations(),
          ),
          VerticalDivider(
              indent: webPaddingMap["left"]!, endIndent: 60.0),
          Flexible(
            child: ProfileSkills(paddingMap: webPaddingMap,),
          )
        ],
      ),
    );
  }
}
