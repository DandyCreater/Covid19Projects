import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AppMain.dart';
import 'package:flutter_application_4/login.dart';
import 'package:flutter_application_4/news.dart';
import 'package:flutter_application_4/vaksin/astrazeneca.dart';
import 'package:flutter_application_4/vaksin/pfizer.dart';
import 'package:flutter_application_4/vaksin/sinopharm.dart';
import 'package:flutter_application_4/vaksin/sinovac.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: login(),
    );
  }
}
