import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:helloworld/pages/first_page.dart';
import 'package:helloworld/pages/home_page.dart';
import 'package:helloworld/pages/second_page.dart';
import 'package:helloworld/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}
int age=28;
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FirstPage(),
      routes:{

        '/homepage':(context) =>HomePage(),
        '/settingspage':(context) =>SettingsPage()
      },
    );
  }
}

