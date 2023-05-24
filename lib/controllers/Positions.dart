import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:play_chess/models/piece/Pieces.dart';

import '../components/EndGame.dart';

class Position
{


  Color turnColor = Colors.white;
  List <Piece> pieces = [Rook('Ладья', 8, Colors.black), Knight('Конь', 7, Colors.black),Bishop('Слон', 6, Colors.black),
    King('Король', 5, Colors.black), Queen('Ферзь', 4, Colors.black),Knight('Конь', 2, Colors.black),
    Bishop('Слон', 3, Colors.black), Rook('Ладья', 1, Colors.black), Pawn('Пешка', 9, Colors.black),
    Pawn('Пешка', 10, Colors.black), Pawn('Пешка', 11, Colors.black), Pawn('Пешка', 12, Colors.black), Pawn('Пешка', 13, Colors.black),
    Pawn('Пешка', 14, Colors.black), Pawn('Пешка', 15, Colors.black), Pawn('Пешка', 16, Colors.black),
    Rook('Ладья', 64, Colors.white), Knight('Конь', 63, Colors.white),Bishop('Слон', 62, Colors.white),
    King('Король', 61, Colors.white), Queen('Ферзь', 60, Colors.white),Knight('Конь', 58, Colors.white),
    Bishop('Слон', 59, Colors.white), Rook('Ладья', 57, Colors.white), Pawn('Пешка', 49, Colors.white),
    Pawn('Пешка', 56, Colors.white), Pawn('Пешка', 55, Colors.white), Pawn('Пешка', 54, Colors.white), Pawn('Пешка', 53, Colors.white),
    Pawn('Пешка', 52, Colors.white), Pawn('Пешка', 51, Colors.white), Pawn('Пешка', 50, Colors.white),
  ];
  List ruleFigure(int key)
  {
    List list = [];
    for (Piece element in pieces) {
      if (key == element.position){
        list = element.rule(pieces);
      }
    }
    return list;
  }
  Piece whatPiece(int key)
  {
    Piece piece = King('null', 555, Colors.white);
    for (Piece element in pieces) {
      if (key == element.position){
        piece = element;
      }
    }
    return piece;
  }
  SvgPicture isPosition(int key){
    String image = 'images/piece_null.svg';
    Color color = Colors.transparent;
    for (Piece element in pieces) {
      if (key == element.position){
        color = element.color;
        image = element.image;
      }
    }
    return SvgPicture.asset(
        image,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        fit: BoxFit.cover
    );

  }
  void newPosition(Piece piece, int key, List childImages)
  {
    ///Все эти три переменны создал для  добавления/удаления из списка.
    ///Во время перебора массива через цикл for нельзя изменять список, поэтому приглось записывать инфу в новые объекты
    Piece newQueen = Queen('null', 555, Colors.white); ///Объект, в случае подходящего условия в который запишется
                                                        ///   новообращённый ферзь
    Piece pieceDelForNewQueen = King('null', 555, Colors.white); ///Объект в который запишется пешка,
                                                                  ///которая должна превратиться в ферзя,
    ///потом с помощью этого объекта пешка удалитя и вместо неё в список всех фигур добавится дамка "newQueen"
    Piece pieceForDel = King('null', 555, Colors.white);///Объект в который запишется срубленная фигура,
                                                        ///с помощью этого объекта произвидётся удаление из списка

    ///Условие на проверку того, прошла ли пешка до конца противоположной стороны, чтобы стать дамкой
    if ((piece.name == 'Пешка') && ((piece.position < 8) || (piece.position > 57)))
    {
      pieceDelForNewQueen = piece;
      newQueen = Queen('Ферзь', piece.position, piece.color);
    }
    pieces.removeWhere((element) => element == pieceDelForNewQueen);///удаление пешки которая дошла до противоположной стороны,
                                                                    /// чтобы стать дамкой
    if (newQueen.position != 555)
    {
      pieces.add(newQueen);///добавление новой дамки в случае прохождения условия
    }

    for (Piece element in pieces)
      {
        if (element.name == 'Пешка гулящая')
          {
            if ((piece.name == 'Пешка') && (((element.position == key - 8) && (element.color == Colors.white)) || ((element.position == key + 8) && (element.color == Colors.black))))
              {
                pieceForDel = element;
              }
            else
              {
                element.name = 'Пешка';
              }
          }
        if (element.position == key)///проверка, если на клетку, на которую наступает фигура, занята,
          ///то добавлением в объект для удаления фигуру которая изначально стояла на этом месте
          {
            pieceForDel = element;
          }

      }
    ///Гулящая пешка = пешка которая сходила на две клетки вперёд. И вполне понятно, это происходит для
    ///того, чтобы пешка могла сделать захват(P.S. так называется трюк пешки который ты Лёъа говорил доавить)
    if (piece.name == 'Пешка гулящая')
    {
      piece.name = 'Пешка';
    }
    if ((piece.name == 'Пешка') && (((piece.position) - key).abs() == 16))///в случае подходящих условий пешка перестаёт
                                                                          ///быть гулящей
    {
      piece.name = 'Пешка гулящая';
    }
    if (pieceForDel.name == 'Пешка гулящая')///удаление изображения гулящей пешки в случае если её срубили
    {
      childImages[pieceForDel.position - 1] = nullImage();
    }
    piece.position = key;///переход активной пешки на нажатую область
    pieces.removeWhere((element) => element == pieceForDel);///удаление фигуры которуб срубили

    ///
    for (Piece piece in pieces) {
      if (piece is King) {
// Проверяем, атакуется ли король
        bool isKingAttacked = piece.isAttacked(pieces);
        if (isKingAttacked) {
          print('Король под шахом');
        }

// Проверяем, находится ли король под шахом матом
        bool isCheckmate = piece.isCheckmate(pieces);
        if (isCheckmate) {
          print('Мат королю');
        }

// Проверяем, находится ли король в пате
        bool isStalemate = piece.isStalemate(pieces);
        if (isStalemate) {
          print('Король в пате');
        }
      }
    }
    if (turnColor == Colors.white)
    {
      turnColor = Colors.black;
    }
    else
    {
      turnColor = Colors.white;
    }
  }
  SvgPicture nullImage(){
    return SvgPicture.asset(
        'images/piece_null.svg',
        colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.srcIn),
        fit: BoxFit.cover
    );
  }
}