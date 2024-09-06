import 'package:flutter/material.dart';

void main() {
  runApp(ChessBoardApp());
}

class ChessBoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Simple Chess Board')),
        body: ChessBoard(),
      ),
    );
  }
}

class ChessBoard extends StatelessWidget {
  final int boardSize = 8;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 1.0,
        child: GridView.builder(
          itemCount: boardSize * boardSize,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: boardSize,
          ),
          itemBuilder: (context, index) {
            final row = index ~/ boardSize;
            final col = index % boardSize;
            final isWhite = (row + col) % 2 == 0;
            return Container(
              color: isWhite ? Colors.white : Colors.black,
            );
          },
        ),
      ),
    );
  }
}