import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uresume/model/dimensions.dart';
import 'package:uresume/view/widgets/ProfileDescription.dart';

import '../widgets/HeaderInfoItem.dart';
import '../widgets/HeaderTitle.dart';
import '../widgets/SmallPanelElements.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white70,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromRGBO(189, 224, 254, 0.8),
              expandedHeight: 250.0,
              toolbarHeight: 150.0,
              elevation: 0,
              floating: true,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding:
                    EdgeInsets.only(left: tabletBodyPaddingMap["left"]!),
                expandedTitleScale: 1,
                title: Container(
                  child: headerTitle(context, 40.0, 15.0),
                ),
                background: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Padding(
                padding: EdgeInsets.only(
                  right: tabletBodyPaddingMap["right"]!,
                ),
                child: Row(children: [
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Expanded(child: headerInfoItems(context))
                ]),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                    top: tabletBodyPaddingMap["left"]!,
                    left: tabletBodyPaddingMap["left"]!,
                    right: tabletBodyPaddingMap["right"]!,
                    bottom: tabletBodyPaddingMap["bottom"]!),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: currentWidth < maxHeaderSize
                          ? currentWidth * 0.30
                          : maxHeaderSize * 0.30,
                      alignment: Alignment.topLeft,
                      child: smallPanelElements(),
                    ),
                    VerticalDivider(
                        indent: tabletBodyPaddingMap["left"]!, endIndent: 60.0),
                    Flexible(
                      child: largePanelElement(tabletBodyPaddingMap),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
