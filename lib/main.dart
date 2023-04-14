import 'package:flutter/material.dart';
import 'package:play_chess/pages/InitialPage.dart';
import 'package:play_chess/pages/GameOneOnOnePage.dart';
import 'package:play_chess/pages/ProfilePage.dart';
import 'package:play_chess/pages/RegistrationPage.dart';
import 'package:play_chess/pages/StartPage.dart';
import 'package:play_chess/pages/GameModesPage.dart';
import 'package:play_chess/pages/HistoryPage.dart';
import 'package:play_chess/pages/SettingsPage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Play Chess',
    initialRoute: '/StartPage',
    routes: {
      '/': (context) => const StartPage(),
      '/initialization': (context) => const InitialPage(),
      '/registration': (context) => const RegistrationPage(),
      '/GameOneonOne': (context) => const GaneOneOnOnePage(),
      '/ProfilePage': (context) => const ProfilePage(),
      '/StartPage': (context) => const StartPage(),
      '/GameModesPage': (context) => const GameModesPage(),
      '/HistoryPage' : (context) => const HistoryPage(),
      '/SettingsPage' : (context) => const SettingsPage(),

    },
    debugShowCheckedModeBanner: false,
  ));
}
