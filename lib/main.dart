import 'package:uresume/view/responsive_views/DesktopBody.dart';
import 'package:uresume/view/responsive_views/TabletBody.dart';
import 'package:uresume/view/responsive_views/MobileBody.dart';
import 'package:uresume/view/widgets/ResponsiveLayoutBuilder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(bodyText2: GoogleFonts.montserrat())
        ),
        home: Scaffold(
          body: SafeArea(child: ResponsiveLayout(const MobileBody(), const DesktopBody(), const TabletBody())),
        ));
  }
}
