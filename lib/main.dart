import 'package:flutter/material.dart';
import 'package:prec/pages/home_page.dart';
import 'package:prec/pages/login_page.dart';
import 'package:prec/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Divya App",
      home: Constants.prefs?.getBool("loggedIn")==true?HomePage():LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),
  );
}

