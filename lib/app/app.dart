import 'package:crossword_puzzle/wordle/views/wordle_screen.dart';
import 'package:flutter/material.dart';
import 'package:crossword_puzzle/wordle/wordle.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Wordle App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: const WordleScreen(),
    );
  }
}
