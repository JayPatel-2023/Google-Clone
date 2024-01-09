import 'package:flutter/material.dart';
import 'package:google_clone/screens/search_screen.dart';
import 'package:google_clone/utils/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Clone',
      theme: kDarkTheme,
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileLayout(),
      //   webScreenLayout: WebLayout() ,
      // ),
      home: const SearchScreen(),
    );
  }
}
