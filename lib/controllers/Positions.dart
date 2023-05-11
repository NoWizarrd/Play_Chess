import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:play_chess/models/piece/Pieces.dart';

class Position
{
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
  void newPosition(Piece piece, int key)
  {
    Piece newQueen = Queen('null', 555, Colors.white);
    Piece pieceDelForNewQueen = King('null', 555, Colors.white);
    Piece pieceForDel = King('null', 555, Colors.white);
    for (Piece element in pieces)
      {
        if (element.position == key)
          {
            pieceForDel = element;
          }
        if (piece == element)
          {
            element.position = key;
          }
        if ((piece.name == 'Пешка') && ((piece.position < 8) || (piece.position > 57)))
          {
            pieceDelForNewQueen = piece;
            newQueen = Queen('Ферзь', piece.position, piece.color);
          }
      }
    pieces.removeWhere((element) => element == pieceForDel);
    pieces.removeWhere((element) => element == pieceDelForNewQueen);
    if (newQueen.position != 555)
      {
        //pieces.removeWhere((element) => element == Pawn('Пешка', newQueen.position, newQueen.color));
        //print(pieces.length);
        pieces.add(newQueen);
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