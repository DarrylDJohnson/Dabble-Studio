import 'package:dabble_studio/utilities/routes.dart';
import 'package:flutter/material.dart';

import 'ui/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dabble Studio',
      debugShowCheckedModeBanner: false,
      initialRoute: homeRoute,
      routes: routes,
      theme: ThemeData(
        fontFamily: "Quicksand",
        primarySwatch: Colors.lightBlue,
      ),
      home: HomePage(),
    );
  }
}
