import 'package:flutter/cupertino.dart';
import 'package:uresume/model/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget webBody;

  ResponsiveLayout(this.mobileBody, this.webBody);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (contex, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobileBody;
      } else {
        return Center(
            child: Container(
          constraints: const BoxConstraints(maxWidth: maxHeaderSize),
          child: webBody,
        ));
      }
    });
  }
}
