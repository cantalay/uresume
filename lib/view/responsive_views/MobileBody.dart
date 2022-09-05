import 'package:flutter/material.dart';

import 'mobile/MobileHeader.dart';
import 'mobile/MobileListView.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white70,
      body: CustomScrollView(
        slivers: [MobileHeader(), MobileListView()],
      ),
    );
  }
}
