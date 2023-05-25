import 'package:flutter/material.dart';
import 'package:play_chess/controllers/Positions.dart';
import 'package:play_chess/models/piece/Pieces.dart';

class Board {
  int buttonKey = 0;
  Position positions = Position();
  Piece nowPiece = King('null', 555, Colors.white);
  List<Color> colors1 = [];
  List colors2 = [];
  List childImages = [];


  int buildBoard(int index) {
    buttonKey++;
    final row = index ~/ 8;
    final col = index % 8;
    Color color = (row + col) % 2 == 0
        ? Color.fromRGBO(194, 184, 146, 1)
        : Color.fromRGBO(106, 74, 25, 1.0);
    colors1.add(color);
    colors2.add(color);
    childImages.add(positions.isPosition(buttonKey));
    return buttonKey;
  }

  void clickButton(int key) {
    if (nowPiece.name != 'null') {
      if (colors1[key - 1] == Color.fromRGBO(80, 250, 148, 0.6) ||
          colors1[key - 1] == Color.fromRGBO(235, 9, 9, 0.6)) {
        // Жмем на доступный ход
        childImages[nowPiece.position - 1] = positions.nullImage();
        positions.newPosition(nowPiece, key, childImages);
        childImages[key - 1] = positions.isPosition(key);
      }
      for (int key = 1; key < 65; key++) {
        colors1[key - 1] = colors2[key - 1];
      }
      nowPiece = King('null', 555,
          Colors.white); // Выбор короля фигуры, которая сейчас выбрана
    } else {
    if (nowPiece != positions.whatPiece(key)) {
      if (positions.whatPiece(key).color == positions.turnColor)
      {
        for (int key in positions.ruleFigure(key)) {
          // Подсветка доступных ходов
          if (positions.whatPiece(key).name != 'null') {
            // Проверяем, является ли позиция позицией фигуры противника
            colors1[key - 1] = Color.fromRGBO(235, 9, 9, 0.6); // Красный цвет для срубления фигуры противника
          } else {
            colors1[key - 1] = Color.fromRGBO(
                80, 250, 148, 0.6); // Зеленый цвет для доступного хода
          }
        }
        nowPiece = positions.whatPiece(key);
        colors1[nowPiece.position - 1] = Color.fromRGBO(64, 168, 106, 0.9);
      }
      }
    }
  }
}