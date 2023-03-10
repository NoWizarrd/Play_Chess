import 'package:flutter/material.dart';
import 'package:play_chess/pages/StartPage.dart';
import 'package:play_chess/pages/InitialPage.dart';
import 'package:play_chess/pages/RegistrationPage.dart';
import 'package:firebase_core/firebase_core.dart';


void initFireBase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
void main() {
  initFireBase();
  runApp(MaterialApp(
    title: 'Play Chess',
    initialRoute: '/startPage',
    routes: {
      '/': (context) => const StartPage(),
      '/initialization': (context) => const InitialPage(),
      '/registration': (context) => const RegistrationPage(),
      '/startPage': (context) => const StartPage(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
