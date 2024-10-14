class Question{
  final String question;
  final List<String> options;
  final int indexReponseCorrect;
  final String theme;
  final String niveau;

  Question({
    required this.question,
    required this.options,
    required this.indexReponseCorrect,
    required this.theme,
    required this.niveau,
  });

  bool isCorrect(int selectionIndex){
    return selectionIndex == indexReponseCorrect;
  }

}