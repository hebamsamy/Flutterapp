class QuestionBank {
  List<Question> _QuestionList = [
    Question(id: 1, text: "is flutter develop only andriod", answer: false),
    Question(id: 2, text: "flutter is all about Widgit", answer: true),
    Question(id: 3, text: "test", answer: true)
  ];
  int current = 0;
  Question getQuestion() {
    return _QuestionList[current];
  }

  move() {
    current++;
  }
}

class Question {
  int id;
  String text;
  bool answer;
  Question({required this.id, required this.text, required this.answer});
}
