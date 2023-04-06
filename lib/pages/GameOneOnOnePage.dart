import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GaneOneOnOnePage extends StatefulWidget {
  const GaneOneOnOnePage({Key? key}) : super(key: key);

  @override
  State<GaneOneOnOnePage> createState() => _GaneOneOnOnePageState();
}

class _GaneOneOnOnePageState extends State<GaneOneOnOnePage> {
  @override

  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return Scaffold(
      body: Text('Тут будет окно игры'),
    );
  }
}
