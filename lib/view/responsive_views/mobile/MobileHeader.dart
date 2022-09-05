import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../model/dimensions.dart';
import '../../widgets/HeaderTitle.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color.fromRGBO(189, 224, 254, 0.8),
      expandedHeight: 180.0,
      toolbarHeight: 150.0,
      elevation: 0,
      floating: true,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        background: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.black.withOpacity(0),
          ),
        ),
        titlePadding: EdgeInsets.only(
            left: mobileBodyPaddingMap['left']!,
            right: mobileBodyPaddingMap['right']!),
        expandedTitleScale: 1,
        title: const HeaderTitle(
          userFontSize: 35.0,
          titleFontSize: 12.0,
        ),
      ),
    );
  }
}
