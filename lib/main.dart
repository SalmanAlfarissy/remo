import 'package:flutter/material.dart';
import 'package:remo/home_page.dart';
import 'package:remo/list_screen.dart';
import 'package:remo/location_page.dart';
import 'package:remo/login_page.dart';

import 'card_mobil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    LocationPage.tag: (context) => LocationPage(),
    ListScreen.tag: (context) => ListScreen(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rental Mobil (REMO)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: 'GrapeNuts'
      ),
      home: LoginPage(),
      routes: routes,
    );
  }

}
