import 'package:flutter/material.dart';

abstract class Piece{
  abstract String name;
  abstract int position;
  abstract String image;
  abstract Color color;
  Piece();
  List rule(List listPieces);
}


class King extends Piece{
  @override
  String name = '';
  @override
  int position = 1;
  @override
  String image = 'images/Король.svg';
  @override
  Color color = Colors.black;
  King(this.name, this.position, this.color);
  @override

  List rule(List listPieces) {
    List keys = [];
    List temporaryKeys = [];
    if ((position - 1) % 8 != 0)
    {
      keys.add(position - 1);
    }
    if (position % 8 != 0)
    {
      keys.add(position + 1);
    }
    if (position > 8)
    {
      keys.add(position - 8);
    }
    if (position < 57)
    {
      keys.add(position + 8);
    }
    if ((position < 57) && ((position - 1) % 8 != 0))
    {
      keys.add(position + 7);
    }
    if ((position < 57) && (position % 8 != 0))
    {
      keys.add(position + 9);
    }
    if ((position > 8) && (position % 8 != 0))
    {
      keys.add(position - 7);
    }
    if ((position > 8) && ((position - 1) % 8 != 0))
    {
      keys.add(position - 9);
    }
    for (int key in keys)
    {
      for (Piece piece in listPieces)
      {
        if ((piece.position == key) && (piece.color == color))
        {
          temporaryKeys.add(key);
        }
      }
    }
    for (int key in temporaryKeys)
    {
      keys.remove(key);
    }
    return keys;
  }
}

class Queen extends Piece
{
  @override
  String name = '';
  @override
  int position = 1;
  @override
  String image = 'images/Ферзь.svg';
  @override
  Color color = Colors.black;
  Queen(this.name, this.position, this.color);

  @override
  List rule(List listPieces)
  {
    List keys = [];

    int temporaryPositionVertical = position;
    int temporaryPositionHorizontal = position;
    bool notFound = false;
    int numb = 0;
    while (temporaryPositionVertical > 8)
      {
        temporaryPositionVertical -= 8;
        if ((temporaryPositionHorizontal  - 1) % 8 != 0)
          {
            temporaryPositionHorizontal--;
            numb++;
            for (Piece piece in listPieces)
            {
              if (piece.position == temporaryPositionVertical - numb)
              {
                if (piece.color != color)
                {
                  keys.add(temporaryPositionVertical - numb);
                }
                notFound = true;
              }
            }
            if (notFound)
            {
              break;
            }
            keys.add(temporaryPositionVertical - numb);
          }
      }

    temporaryPositionVertical = position;
    temporaryPositionHorizontal = position;
    notFound = false;
    numb = 0;

    while (temporaryPositionVertical < 57)
    {
      temporaryPositionVertical += 8;
      if ((temporaryPositionHorizontal  - 1) % 8 != 0)
      {
        temporaryPositionHorizontal--;
        numb++;
        for (Piece piece in listPieces)
        {
          if (piece.position == temporaryPositionVertical - numb)
          {
            if (piece.color != color)
            {
              keys.add(temporaryPositionVertical - numb);
            }
            notFound = true;
          }
        }
        if (notFound)
        {
          break;
        }
        keys.add(temporaryPositionVertical - numb);
      }
    }


    temporaryPositionVertical = position;
    temporaryPositionHorizontal = position;
    notFound = false;
    numb = 0;
    while (temporaryPositionVertical > 8)
    {
      temporaryPositionVertical -= 8;
      if (temporaryPositionHorizontal % 8 != 0)
      {
        temporaryPositionHorizontal++;
        numb++;
        for (Piece piece in listPieces)
        {
          if (piece.position == temporaryPositionVertical + numb)
          {
            if (piece.color != color)
            {
              keys.add(temporaryPositionVertical + numb);
            }
            notFound = true;
          }
        }
        if (notFound)
        {
          break;
        }
        keys.add(temporaryPositionVertical + numb);
      }
    }

    temporaryPositionVertical = position;
    temporaryPositionHorizontal = position;
    notFound = false;
    numb = 0;
    while (temporaryPositionVertical < 57)
    {
      temporaryPositionVertical += 8;
      if (temporaryPositionHorizontal % 8 != 0)
      {
        temporaryPositionHorizontal++;
        numb++;
        for (Piece piece in listPieces)
        {
          if (piece.position == temporaryPositionVertical + numb)
          {
            if (piece.color != color)
            {
              keys.add(temporaryPositionVertical + numb);
            }
            notFound = true;
          }
        }
        if (notFound)
        {
          break;
        }
        keys.add(temporaryPositionVertical + numb);
      }
    }

    temporaryPositionVertical = position;
    temporaryPositionHorizontal = position;
    notFound = false;
    while (temporaryPositionVertical > 8)
    {
      temporaryPositionVertical -= 8;
      for (Piece piece in listPieces)
      {
        if (piece.position == temporaryPositionVertical)
        {
          if (piece.color != color)
          {
            keys.add(temporaryPositionVertical);
          }
          notFound = true;
        }
      }
      if (notFound)
      {
        break;
      }
      keys.add(temporaryPositionVertical);
    }


    temporaryPositionVertical = position;
    temporaryPositionHorizontal = position;
    notFound = false;
    while (temporaryPositionVertical < 57)
    {
      temporaryPositionVertical += 8;
      for (Piece piece in listPieces)
      {
        if (piece.position == temporaryPositionVertical)
        {
          if (piece.color != color)
          {
            keys.add(temporaryPositionVertical);
          }
          notFound = true;
        }
      }
      if (notFound)
      {
        break;
      }
      keys.add(temporaryPositionVertical);
    }
    temporaryPositionVertical = position;
    temporaryPositionHorizontal = position;
    notFound = false;
    while (temporaryPositionHorizontal % 8 != 0)
      {
        temporaryPositionHorizontal++;
        for (Piece piece in listPieces)
          {
            if (piece.position == temporaryPositionHorizontal)
              {
                if (piece.color != color)
                  {
                    keys.add(temporaryPositionHorizontal);
                  }
                notFound = true;
              }
          }
        if (notFound)
        {
          break;
        }
        keys.add(temporaryPositionHorizontal);

      }
    temporaryPositionVertical = position;
    temporaryPositionHorizontal = position;
    notFound = false;
    while ((temporaryPositionHorizontal - 1)  % 8 != 0)
    {
      temporaryPositionHorizontal--;
      for (Piece piece in listPieces)
      {
        if (piece.position == temporaryPositionHorizontal)
        {
          if (piece.color != color)
          {
            keys.add(temporaryPositionHorizontal);
          }
          notFound = true;
        }
      }
      if (notFound)
      {
        break;
      }
      keys.add(temporaryPositionHorizontal);
    }
    return keys;
  }
}

class Knight extends Piece
{
  @override
  String name = '';
  @override
  int position = 1;
  @override
  String image = 'images/Конь.svg';
  @override
  Color color = Colors.black;
  Knight(this.name, this.position, this.color);
  @override
  List rule(List listPieces)
  {
    List keys = [];
    List temporaryKeys = [];
    if ((position + 1) % 8 != 0)
      {
        keys.add(position + 10);
        keys.add(position - 6);
      }
    if (position % 8 != 0)
    {
      keys.add(position + 17);
      keys.add(position - 15);
    }
    if ((position - 2) % 8 != 0)
      {
        keys.add(position + 6);
        keys.add(position - 10);
      }
    if ((position - 1) % 8 != 0)
    {
      keys.add(position + 15);
      keys.add(position - 17);
    }
    for (int key in keys)
    {
      for (Piece piece in listPieces)
      {
        if ((piece.position == key) && (piece.color == color))
        {
          temporaryKeys.add(key);
        }
      }
    }
    for (int key in temporaryKeys)
      {
        keys.remove(key);
      }
    keys.removeWhere((element) => element < 1);
    keys.removeWhere((element) => element > 64);
    return keys;
  }
}


class Bishop extends Piece
{
  @override
  String name = '';
  @override
  int position = 1;
  @override
  String image = 'images/Слон.svg';
  @override
  Color color = Colors.black;
  Bishop(this.name, this.position, this.color);
  @override
  @override
  List rule(List listPieces)
  {
    List keys = [];

    int temporaryPositionVertical = position;
    int temporaryPositionHorizontal = position;
    bool notFound = false;
    int numb = 0;
    while (temporaryPositionVertical > 8)
    {
      temporaryPositionVertical -= 8;
      if ((temporaryPositionHorizontal  - 1) % 8 != 0)
      {
        temporaryPositionHorizontal--;
        numb++;
        for (Piece piece in listPieces)
        {
          if (piece.position == temporaryPositionVertical - numb)
          {
            if (piece.color != color)
            {
              keys.add(temporaryPositionVertical - numb);
            }
            notFound = true;
          }
        }
        if (notFound)
        {
          break;
        }
        keys.add(temporaryPositionVertical - numb);
      }
    }

    temporaryPositionVertical = position;
    temporaryPositionHorizontal = position;
    notFound = false;
    numb = 0;

    while (temporaryPositionVertical < 57)
    {
      temporaryPositionVertical += 8;
      if ((temporaryPositionHorizontal  - 1) % 8 != 0)
      {
        temporaryPositionHorizontal--;
        numb++;
        for (Piece piece in listPieces)
        {
          if (piece.position == temporaryPositionVertical - numb)
          {
            if (piece.color != color)
            {
              keys.add(temporaryPositionVertical - numb);
            }
            notFound = true;
          }
        }
        if (notFound)
        {
          break;
        }
        keys.add(temporaryPositionVertical - numb);
      }
    }


    temporaryPositionVertical = position;
    temporaryPositionHorizontal = position;
    notFound = false;
    numb = 0;
    while (temporaryPositionVertical > 8)
    {
      temporaryPositionVertical -= 8;
      if (temporaryPositionHorizontal % 8 != 0)
      {
        temporaryPositionHorizontal++;
        numb++;
        for (Piece piece in listPieces)
        {
          if (piece.position == temporaryPositionVertical + numb)
          {
            if (piece.color != color)
            {
              keys.add(temporaryPositionVertical + numb);
            }
            notFound = true;
          }
        }
        if (notFound)
        {
          break;
        }
        keys.add(temporaryPositionVertical + numb);
      }
    }

    temporaryPositionVertical = position;
    temporaryPositionHorizontal = position;
    notFound = false;
    numb = 0;
    while (temporaryPositionVertical < 57)
    {
      temporaryPositionVertical += 8;
      if (temporaryPositionHorizontal % 8 != 0)
      {
        temporaryPositionHorizontal++;
        numb++;
        for (Piece piece in listPieces)
        {
          if (piece.position == temporaryPositionVertical + numb)
          {
            if (piece.color != color)
            {
              keys.add(temporaryPositionVertical + numb);
            }
            notFound = true;
          }
        }
        if (notFound)
        {
          break;
        }
        keys.add(temporaryPositionVertical + numb);
      }
    }
    return keys;
  }
}

class Rook extends Piece
{
  @override
  String name = '';
  @override
  int position = 1;
  @override
  String image = 'images/Ладья.svg';
  @override
  Color color = Colors.black;
  Rook(this.name, this.position, this.color);
  @override
  List rule(List listPieces)
  {
    List keys = [];
    int temporaryPositionVertical = position;
    int temporaryPositionHorizontal = position;
    bool notFound = false;
    while (temporaryPositionVertical > 8)
    {
      temporaryPositionVertical -= 8;
      for (Piece piece in listPieces)
      {
        if (piece.position == temporaryPositionVertical)
        {
          if (piece.color != color)
          {
            keys.add(temporaryPositionVertical);
          }
          notFound = true;
        }
      }
      if (notFound)
      {
        break;
      }
      keys.add(temporaryPositionVertical);
    }


    temporaryPositionVertical = position;
    temporaryPositionHorizontal = position;
    notFound = false;
    while (temporaryPositionVertical < 57)
    {
      temporaryPositionVertical += 8;
      for (Piece piece in listPieces)
      {
        if (piece.position == temporaryPositionVertical)
        {
          if (piece.color != color)
          {
            keys.add(temporaryPositionVertical);
          }
          notFound = true;
        }
      }
      if (notFound)
      {
        break;
      }
      keys.add(temporaryPositionVertical);
    }
    temporaryPositionVertical = position;
    temporaryPositionHorizontal = position;
    notFound = false;
    while (temporaryPositionHorizontal % 8 != 0)
    {
      temporaryPositionHorizontal++;
      for (Piece piece in listPieces)
      {
        if (piece.position == temporaryPositionHorizontal)
        {
          if (piece.color != color)
          {
            keys.add(temporaryPositionHorizontal);
          }
          notFound = true;
        }
      }
      if (notFound)
      {
        break;
      }
      keys.add(temporaryPositionHorizontal);

    }
    temporaryPositionVertical = position;
    temporaryPositionHorizontal = position;
    notFound = false;
    while ((temporaryPositionHorizontal - 1)  % 8 != 0)
    {
      temporaryPositionHorizontal--;
      for (Piece piece in listPieces)
      {
        if (piece.position == temporaryPositionHorizontal)
        {
          if (piece.color != color)
          {
            keys.add(temporaryPositionHorizontal);
          }
          notFound = true;
        }
      }
      if (notFound)
      {
        break;
      }
      keys.add(temporaryPositionHorizontal);
    }
    return keys;
  }
}

class Pawn extends Piece
{
  @override
  String name = '';
  @override
  int position = 1;
  @override
  String image = 'images/Пешка.svg';
  @override
  Color color = Colors.black;
  Pawn(this.name, this.position, this.color);
  @override
  rule(List listPieces)
  {
    List keys = [];
    int coefficient;
    if (color == Colors.white)
      {
        coefficient = -1;
      }
    else
      {
        coefficient = 1;
      }
    keys.add(position + 8 * coefficient);
    keys.add(position + 16 * coefficient);
    keys.removeWhere((element) => element < 1);
    keys.removeWhere((element) => element > 64);
    for (Piece piece in listPieces)
      {
        if (piece.position == position + 7 * coefficient)
        {
          if (piece.color != color)
          {
            keys.add(piece.position);
          }
        }
        if (piece.position == position + 9 * coefficient)
        {
          if (piece.color != color)
          {
            keys.add(piece.position);
          }
        }
        if (piece.position == position + 8 * coefficient)
        {
          if (piece.color != color)
          {
            keys.removeWhere((element) => element == piece.position);
          }
        }
      }
    return keys;
  }
}