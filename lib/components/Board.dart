import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:play_chess/components/EndGame.dart';
import 'package:play_chess/controllers/BoardControllers.dart';



class BoardView extends StatefulWidget {
  const BoardView({Key? key}) : super(key: key);
  @override
  State<BoardView> createState() => _BoardViewState();
}

class _BoardViewState extends State<BoardView> {

  @override
  void initState() {
    super.initState();
  }
  Board boards = Board();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return Scaffold(
      body: Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 64,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
            childAspectRatio: 1,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
          ),
          itemBuilder: (BuildContext context, int index) {
            boards.buildBoard(index);
            return ElevatedButton(
                onPressed: (){
                  setState(() {
                    boards.clickButton(index + 1);
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  backgroundColor: boards.colors1[index],
                  foregroundColor: boards.colors1[index],
                ),
                child: boards.childImages[index]// фигуры
            );
          },
        ),
      ),
    );
  }
}
