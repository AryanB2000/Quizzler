import 'package:quizzler/question.dart';

class QuizBrain {
  int _quesno = 0;
  List<Question> _mylist = [
    Question('Capital of Germany is Berlin', true),
    Question('Entomology is the science that studies insects.', true),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('Galileo was an astronomer who developed the telescope', false),
    Question('A slug\'s blood is red.', false),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question('The smallest country in the world is Maldives.', false),
  ];
  String getques() {
    return _mylist[_quesno].ques;
  }

  bool getans() {
    return _mylist[_quesno].ans;
  }

  void nextque() {
    if (_quesno < _mylist.length - 1) _quesno++;
  }

  bool isFinished() {
    if (_quesno < _mylist.length - 1)
      return false;
    else
      return true;
  }

  void reset() {
    _quesno = 0;
  }
}
