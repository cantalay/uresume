import 'package:flutter/material.dart';
import 'package:uresume/model/dimensions.dart';
import 'package:uresume/view/responsive_views/MobileBody.dart';
import 'package:uresume/view/responsive_views/ResponsiveLayoutBuilder.dart';
import 'package:uresume/view/responsive_views/WebBody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: pageTitle,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
              child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/background.png'),
                          fit: BoxFit.cover)),
                  child:
                      ResponsiveLayout(const MobileBody(), const WebBody()))),
        ));
  }
}
