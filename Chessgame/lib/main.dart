import 'package:flutter/material.dart';
import 'chess_board.dart';

void main() {
  runApp(ChessGameApp());
}

class ChessGameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chess Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChessBoard(),
    );
  }
}
