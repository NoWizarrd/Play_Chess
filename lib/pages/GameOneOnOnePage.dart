import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:play_chess/components/Board.dart';
import 'package:play_chess/components/InGameModal.dart';
import 'package:play_chess/components/TimerWidget.dart';

class GaneOneOnOnePage extends StatefulWidget {
  const GaneOneOnOnePage({Key? key}) : super(key: key);

  @override
  State<GaneOneOnOnePage> createState() => _GaneOneOnOnePageState();
}


class _GaneOneOnOnePageState extends State<GaneOneOnOnePage> {

  void _showInGameModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return InGameModal();
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return Scaffold(
      appBar: AppBar(
        title: Text('Шахматы'),
        backgroundColor: Color.fromRGBO(106, 74, 25, 1.0),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              _showInGameModal(context);
            }
          ),
        ],
      ),
      body: Stack(
        children: [
          // Доска с шахматами
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0, // высота таймера игрока + небольшой отступ
            child: Board(),
          ),
          // Таймер игрока
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              color: Color.fromRGBO(194, 184, 146, 1),
              child: Center(
                child: TimerWidget(playerName: 'Wizard', initialTime: 120,),
              ),
            ),
          ),
          // Таймер соперника
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 50,
              color: Color.fromRGBO(194, 184, 146, 1),
              child: Center(
                child: TimerWidget(playerName: 'Zasuherka', initialTime: 120,),
              ),
            ),
          ),
        ],
      )
    );
  }
}
