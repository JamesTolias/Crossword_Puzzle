import 'letter_model.dart';
import 'package:equatable/equatable.dart';
import 'package:crossword_puzzle/wordle/wordle.dart';

class Word extends Equatable {
  const Word({required this.letters});

//converting strings in to words. It splits strings into a list and then Mapping each element to a letter
  factory Word.fromString(String word) =>
      Word(letters: word.split('').map((e) => Letter(val: e)).toList());

  final List<Letter> letters;

// getting string version of a word
  String get wordString => letters.map((e) => e.val).join();

// getting current index and adding the letter to the correct position
  void addLetter(String val) {
    final currentIndex = letters.indexWhere((e) => e.val.isEmpty);
    if (currentIndex != -1) {
      letters[currentIndex] = Letter(val: val);
    }
  }

// getting the last index 'that is not an empty string' and set the position to an empty letter
  void removeLetter() {
    final recentLetterIndex = letters.lastIndexWhere((e) => e.val.isNotEmpty);
    if (recentLetterIndex != -1) {
      letters[recentLetterIndex] = Letter.empty();
    }
  }

// returning the list of objects
  @override
  List<Object?> get props => [letters];
}
