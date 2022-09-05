import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../model/dimensions.dart';
import '../../widgets/HeaderInfoItems.dart';
import '../../widgets/HeaderTitle.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color.fromRGBO(189, 224, 254, 0.8),
      expandedHeight: 250.0,
      toolbarHeight: 150.0,
      elevation: 0,
      floating: true,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: webPaddingMap["left"]!),
        expandedTitleScale: 1,
        title: Container(
          child: const HeaderTitle(userFontSize: 40.0, titleFontSize: 15.0,),
        ),
        background: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Padding(
            padding: EdgeInsets.only(
              right: webPaddingMap["right"]!,
            ),
            child: Row(children: const [
              Expanded(
                child: SizedBox(),
              ),
              Expanded(child: HeaderInfoItems())
            ]),
          ),
        ),
      ),
    );
  }
}
