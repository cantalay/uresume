import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uresume/model/dimensions.dart';
import 'package:uresume/view/responsive_views/MobileBody.dart';
import 'package:uresume/view/responsive_views/TabletBody.dart';
import 'package:uresume/view/widgets/ResponsiveLayoutBuilder.dart';

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
        theme: ThemeData(
            textTheme: TextTheme(bodyText2: GoogleFonts.montserrat())),
        home: Scaffold(
          body: SafeArea(
              child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/background.png'),
                          fit: BoxFit.cover)),
                  child: ResponsiveLayout(
                      const MobileBody(), const TabletBody()))),
        ));
  }
}
