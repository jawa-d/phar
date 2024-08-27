import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:par/BNBdev.dart';
import 'package:par/HomeScreen.dart';
import 'package:par/Homepage.dart';
import 'package:par/Homepage2.dart';
import 'package:par/Login2.dart';
import 'package:par/Signup.dart';
import 'package:par/Simple%20Onboarding.dart';
import 'package:par/Store.dart';


void main() {
  runApp(MyApp());
  // widget : class build by google
  // vs class : class build by you
}

/// Stateless => غير تفاعلية صفحات
/// Stateful =>  صفحات االتفاعليه

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
debugShowCheckedModeBanner: false,

home:Simpleonboarding(),

    );



  }
}

