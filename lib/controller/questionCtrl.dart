import 'dart:async';
import '../Modele/question.dart';

class QuestionCtrl {
  final List<Question> touteQuestions;
  late List<Question> questionActuelle;
  int indexActuel = 0;
  int score = 0;
  Timer? timer;
  int tempsRestant = 10;
  bool enAttente = false;  // Indicateur pour attendre la validation avant de passer à la question suivante

  QuestionCtrl(this.touteQuestions);

  void Commencer(String theme, String niveau) {
    questionActuelle = touteQuestions.where((q) {
      return q.theme == theme && q.niveau == niveau;
    }).toList();
    indexActuel = 0;
    score = 0;
    tempsRestant = 10;
    debutTemps();
  }

  bool verifierReponse(int selectionOption) {
    // Vérifie si la réponse est correcte
    bool isCorrect = questionActuelle[indexActuel].isCorrect(selectionOption);
    if (isCorrect) {
      incrementScore();  // Appel à la méthode d'incrémentation du score
    }
    return isCorrect;
  }

  // Nouvelle méthode pour incrémenter le score
  void incrementScore() {
    score += 1;  // Incrémente le score
  }

  void questionSuivante() {
    // Ne passe à la question suivante que si on n'est pas en attente
    if (!enAttente && indexActuel < questionActuelle.length - 1) {
      indexActuel += 1;
      viderTemps(); // Réinitialiser le temps
    } else {
      stopTemps(); // Arrête le timer si le quiz est terminé
    }
  }

  void debutTemps() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (tempsRestant > 0 && !enAttente) {
        tempsRestant--;
      } else if (tempsRestant == 0 && !enAttente) {
        questionSuivante(); // Passe à la question suivante quand le temps est écoulé
      }
    });
  }

  void stopTemps() {
    timer?.cancel();
  }

  void viderTemps() {
    tempsRestant = 10; // Réinitialise le temps
    stopTemps(); // Arrête le timer
    debutTemps(); // Redémarre le timer
  }

  bool isFinish() {
    return indexActuel >= questionActuelle.length; // Vérifie si le quiz est terminé
  }

  void setEnAttente(bool valeur) {
    enAttente = valeur; // Met à jour l'état d'attente
  }
}
