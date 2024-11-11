class QuizQuestions {
  const QuizQuestions(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getShuffeledAnswers() {
    final shuffeledlist = List.of(answers);
    shuffeledlist.shuffle();
    return shuffeledlist;
  }
}
