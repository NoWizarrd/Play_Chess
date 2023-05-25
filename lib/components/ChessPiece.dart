import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChessPiece extends StatelessWidget {
  final String pieceType; // тип фигуры (например, "king" или "queen")
  final bool isWhite; // цвет фигуры (true - белый, false - черный)
  ChessPiece({required this.pieceType, required this.isWhite});

  @override
  Widget build(BuildContext context) {

    String assetName = '${pieceType}.svg';
    final _color;
    isWhite == true ? _color =  Colors.white : _color = Colors.black;
    return SvgPicture.asset(
      'images/$assetName',
      color: Colors.white,// путь к файлу с изображением фигуры
      height: 40, // задаем размер фигуры
      width: 40,
    );
  }
}
