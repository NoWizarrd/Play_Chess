import 'package:flutter/material.dart';
import 'package:play_chess/pages/InitialPage.dart';
import 'package:play_chess/pages/GameOneOnOnePage.dart';
import 'package:play_chess/pages/RegistrationPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:play_chess/pages/StartPage.dart';
import 'package:play_chess/pages/GameModesPage.dart';


void initFireBase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
void main() {
  initFireBase();
  runApp(MaterialApp(
    title: 'Play Chess',
    initialRoute: '/StartPage',
    routes: {
      '/': (context) => const StartPage(),
      '/initialization': (context) => const InitialPage(),
      '/registration': (context) => const RegistrationPage(),
      '/StartPage': (context) => const StartPage(),
      '/GameOneonOne': (context) => const GaneOneOnOnePage(),
      '/GameModesPage': (context) => const GameModesPage()
    },
    debugShowCheckedModeBanner: false,
  ));
}
