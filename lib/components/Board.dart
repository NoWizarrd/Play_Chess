import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ChessPiece.dart';

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  List<String> _chessboard = List.generate(64, (index) => '');
  final List<String> _startingPositions = [
    'ЛадьяЧ', 'КоньЧ', 'СлонЧ', 'ФерзьЧ', 'КорольЧ', 'СлонЧ', 'КоньЧ', 'ЛадьяЧ',
    'ПешкаЧ', 'ПешкаЧ', 'ПешкаЧ', 'ПешкаЧ', 'ПешкаЧ', 'ПешкаЧ', 'ПешкаЧ', 'ПешкаЧ',
    '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '',
    'Пешка', 'Пешка', 'Пешка', 'Пешка', 'Пешка', 'Пешка', 'Пешка', 'Пешка',
    'Ладья', 'Конь', 'Слон', 'Ферзь', 'Король', 'Слон', 'Конь', 'Ладья',
  ];

  @override
  void initState() {
    super.initState();
    _chessboard = _startingPositions;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return Scaffold(
      body: Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: _chessboard.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
            childAspectRatio: 1,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
          ),
          itemBuilder: (BuildContext context, int index) {
            final row = index ~/ 8;
            final col = index % 8;
            final color = (row + col) % 2 == 0 ? Color.fromRGBO(194, 184, 146, 1) : Color.fromRGBO(106, 74, 25, 1.0);
            bool isWhite = (row + col) % 2 == 0;
            final piece = _chessboard[index];

            return Container(
              color: color,
              child: Center(
                child: piece.isNotEmpty ? ChessPiece(pieceType: piece, isWhite: true) : null, // фигуры
              ),
            );
          },
        ),
      ),
    );
  }
}
