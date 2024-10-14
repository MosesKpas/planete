import 'dart:convert';
import 'package:flutter/services.dart';
import '../Modele/question.dart';

class ChargerQuestions {
  // Méthode pour charger les questions depuis le fichier JSON
  static Future<List<Question>> chargerQuestions() async {
    // Charger le fichier JSON
    String jsonString = await rootBundle.loadString('assets/questions/questions.json');
    List<dynamic> jsonData = jsonDecode(jsonString);

    // Convertir les données JSON en une liste d'objets 'Question'
    return jsonData.map((data) {
      return Question(
        question: data['question'],
        options: List<String>.from(data['options']),
        indexReponseCorrect: data['indexReponseCorrect'],
        theme: data['theme'],
        niveau: data['niveau'],
      );
    }).toList();
  }

  // Méthode pour compter les questions selon le thème et le niveau sélectionnés
  static Future<Map<String, Map<String, int>>> compterQuestions(String themeSelectionne, String niveauSelectionne) async {
    List<Question> questions = await chargerQuestions();
    Map<String, Map<String, int>> compteur = {};

    for (var question in questions) {
      // Vérifier le thème et le niveau
      if (question.theme == themeSelectionne && question.niveau == niveauSelectionne) {
        String theme = question.theme;
        String niveau = question.niveau; // Utiliser une chaîne de caractères pour le niveau

        // Initialiser le thème si nécessaire
        if (!compteur.containsKey(theme)) {
          compteur[theme] = {};
        }

        // Initialiser le niveau si nécessaire
        if (!compteur[theme]!.containsKey(niveau)) {
          compteur[theme]![niveau] = 0;
        }

        // Incrémenter le compteur pour ce thème et niveau
        compteur[theme]![niveau] = compteur[theme]![niveau]! + 1;
      }
    }

    return compteur;
  }
}
