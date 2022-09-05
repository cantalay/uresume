import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uresume/view/responsive_views/web/WebHeader.dart';
import 'package:uresume/view/responsive_views/web/WebListView.dart';

class WebBody extends StatelessWidget {
  const WebBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white70,
        body: CustomScrollView(
          slivers: [
            const WebHeader(),
            SliverToBoxAdapter(
              child: WebListView(currentWidth: currentWidth),
            ),
          ],
        ));
  }
}
