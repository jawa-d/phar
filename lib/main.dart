import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:par/BNBdev.dart';
import 'package:par/ErrorScreen.dart';
import 'package:par/HomeScreen.dart';
import 'package:par/Homepage.dart';
import 'package:par/Homepage2.dart';
import 'package:par/Inventory.dart';
import 'package:par/Invoices.dart';
import 'package:par/Login2.dart';
import 'package:par/Medicine.dart';
import 'package:par/Signup.dart';
import 'package:par/Simple%20Onboarding.dart';
import 'package:par/Store.dart';
import 'package:par/Test.dart';
import 'package:par/cart.dart';
import 'package:par/firebase_options.dart';
import 'package:par/loginhup.dart';
import "package:firebase_core/firebase_core.dart";
import 'package:firebase_auth/firebase_auth.dart';




Future<void> main() async 
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(MyApp());
}
// / Stateless => غير تفاعلية صفحات
// / Stateful =>  صفحات االتفاعليه

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
debugShowCheckedModeBanner: false,

home:Homepage2(),

    );



  }
}

