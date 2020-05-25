
import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question(
      text: 'You can lead a cow down stairs but not up stairs',
      answer: false,
    ),
    Question(
      text: 'Approximately one quarter of human bones are in the feet.',
      answer: true,
    ),
    Question(
      text: 'A slug\'s blood is green.',
      answer: true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].text;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].answer;
  }
}
