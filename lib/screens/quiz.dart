import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:planete/controller/questionCtrl.dart';
import 'package:planete/service/chargerQuestions.dart';
import '../Modele/question.dart';

class QuizPage extends StatefulWidget {
  final QuestionCtrl quizController;
  final String theme;
  final String niveau;
  final Function(int) onScoreUpdate; // Ajout du paramètre

  const QuizPage({
    Key? key,
    required this.quizController,
    required this.theme,
    required this.niveau,
    required this.onScoreUpdate, // Inclure le paramètre ici
  }) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int selectedOption = -1;
  bool showAnswer = false;
  bool isGameOver = false; // Variable pour la gestion de la fin du jeu
  int totalQuestions = 0; // Nouvelle variable pour le nombre total de questions

  @override
  void initState() {
    super.initState();
    widget.quizController.debutTemps();
    _loadTotalQuestions(); // Charger le nombre total de questions pour le thème et niveau sélectionnés
  }

  @override
  void dispose() {
    widget.quizController.stopTemps();
    super.dispose();
  }

  // Méthode pour charger le nombre total de questions par thème et niveau
  Future<void> _loadTotalQuestions() async {
    // Charger toutes les questions
    List<Question> toutesLesQuestions = await ChargerQuestions.chargerQuestions();

    // Filtrer les questions par thème et niveau
    List<Question> questionsFiltrees = toutesLesQuestions.where((question) {
      return question.theme == widget.theme && question.niveau == widget.niveau;
    }).toList();

    // Compter le nombre de questions filtrées
    totalQuestions = questionsFiltrees.length;

    // Mettre à jour l'état pour refléter le nombre total de questions
    setState(() {});
  }

  // Fin du jeu et retour à la page de jeu
  void _gameOver() {
    setState(() {
      isGameOver = true; // Marquer la fin du jeu
    });

    // Affichage d'un dialog pour indiquer la fin du quiz
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Fin du quiz',
            style: TextStyle(color: Colors.green[700], fontSize: 22),
          ),
          content: Text(
            'Votre score final est : ${widget.quizController.score}',
            style: const TextStyle(fontSize: 18),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context); // Retour à la page précédente (jeu ou accueil)
              },
              child: const Text('Retour', style: TextStyle(fontSize: 16)),
            ),
          ],
        );
      },
    );
  }

  // Passage à la question suivante (si jeu non terminé)
  void _nextQuestion() {
    if (isGameOver) {
      return; // Ne pas passer à la question suivante si le jeu est terminé
    }

    if (widget.quizController.indexActuel < widget.quizController.questionActuelle.length - 1) {
      setState(() {
        widget.quizController.indexActuel++; // Incrémenter l'index actuel
        selectedOption = -1; // Réinitialiser la sélection
        showAnswer = false;  // Réinitialiser l'affichage de la réponse
      });
    } else {
      _gameOver(); // Fin du jeu si c'est la dernière question
    }
  }

  // Vérification de la réponse
  void _checkAnswer(int index) {
    if (selectedOption == -1) {
      // Marquer la réponse sélectionnée
      setState(() {
        selectedOption = index;
        showAnswer = true;
      });

      // Mettre en attente le passage à la question suivante
      widget.quizController.setEnAttente(true);

      // Vérifier la réponse
      bool isCorrect = widget.quizController.verifierReponse(selectedOption);

      // Mettre à jour le score si la réponse est correcte
      if (isCorrect) {
        widget.quizController.score++; // Incrémente le score
        widget.onScoreUpdate(widget.quizController.score); // Appelle la fonction pour mettre à jour le score
      }

      // Utiliser un délai uniquement pour afficher la bonne réponse
      Future.delayed(const Duration(seconds: 1), () {
        widget.quizController.setEnAttente(false); // Autoriser le passage à la question suivante
        _nextQuestion(); // Passer à la question suivante
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var question = widget.quizController.questionActuelle[widget.quizController.indexActuel];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz sur l\'Environnement',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green[600],
        centerTitle: true,
        elevation: 6,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Afficher le score et le numéro de la question
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.score, color: Colors.green[700], size: 24),
                      const SizedBox(width: 8),
                      Text(
                        'Score: ${widget.quizController.score}',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.green[800]),
                      ),
                    ],
                  ),
                  Text(
                    'Question ${widget.quizController.indexActuel + 1} sur $totalQuestions', // Afficher le nombre total de questions
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Afficher la question
              Text(
                question.question,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: 1.2,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 20),

              // Afficher les options de réponse dans une grille
              GridView.builder(
                shrinkWrap: true, // Utiliser une taille qui s'adapte au contenu
                physics: const NeverScrollableScrollPhysics(), // Désactiver le défilement
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, // Une seule colonne
                  childAspectRatio: 3, // Augmenter le ratio pour des blocs plus grands
                  crossAxisSpacing: 10, // Espacement entre les colonnes
                  mainAxisSpacing: 10, // Espacement entre les lignes
                ),
                itemCount: question.options.length,
                itemBuilder: (context, index) {
                  bool isCorrectAnswer = index == question.indexReponseCorrect;

                  return GestureDetector(
                    onTap: isGameOver || showAnswer
                        ? null
                        : () => _checkAnswer(index), // Vérifier la réponse
                    child: Container(
                      decoration: BoxDecoration(
                        color: selectedOption == index
                            ? (isCorrectAnswer ? Colors.green[200] : Colors.red[200])
                            : (showAnswer && isCorrectAnswer
                            ? Colors.green[100]
                            : Colors.grey[200]),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        question.options[index],
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
