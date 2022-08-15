import 'package:uresume/model/dimensions.dart';
import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBody;

  ResponsiveLayout(this.mobileBody, this.desktopBody, this.tabletBody);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (contex, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobileBody;
      } else if (constraints.maxWidth < tabletWidth) {
        return tabletBody;
      } else {
        return desktopBody;
      }
    });
  }
}
