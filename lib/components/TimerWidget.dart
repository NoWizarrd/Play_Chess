import 'dart:async';
import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  final int initialTime;
  final String playerName;

  TimerWidget({required this.initialTime, required this.playerName});

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int _timeLeft = 0;

  @override
  void initState() {
    super.initState();
    _timeLeft = widget.initialTime;

    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _timeLeft--;
      });

      if (_timeLeft <= 0) {
        // Код, который нужно выполнить, когда таймер закончится
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "${widget.playerName}: $_timeLeft sec",
      style: TextStyle(fontSize: 20),
    );
  }
}