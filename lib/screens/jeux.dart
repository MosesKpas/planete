import 'package:flutter/material.dart';
import 'package:planete/Modele/question.dart';
import 'package:planete/controller/questionCtrl.dart';
import 'package:planete/screens/quiz.dart';
import 'package:planete/service/chargerQuestions.dart';
import 'package:shared_preferences/shared_preferences.dart';

class JeuxPage extends StatefulWidget {
  const JeuxPage({super.key});

  @override
  _JeuxPageState createState() => _JeuxPageState();
}

class _JeuxPageState extends State<JeuxPage> {
  String selectedTheme = 'Environnement';
  String selectedLevel = 'Débutant';
  List<String> themes = ['Environnement', 'Énergie', 'Biodiversité'];
  List<String> levels = ['Débutant', 'Intermédiaire', 'Avancé'];
  int score = 0;
  int highScore = 0;

  @override
  void initState() {
    super.initState();
    _loadHighScore();
  }

  _loadHighScore() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      highScore = prefs.getInt('highScore') ?? 0;
    });
  }

  _saveHighScore(int score) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('highScore', score);
  }

  void _updateScore(int newScore) {
    setState(() {
      score = newScore;
      if (score > highScore) {
        highScore = score;
        _saveHighScore(highScore);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Utiliser un fond blanc pour un look minimaliste
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildScoreCard(),
              const SizedBox(height: 30),
              Text(
                'Quiz',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800],
                ),
              ),
              const SizedBox(height: 30),
              _buildDropdown<String>(
                label: 'Sélectionnez un thème',
                value: selectedTheme,
                items: themes,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedTheme = newValue!;
                  });
                },
              ),
              const SizedBox(height: 20),
              _buildDropdown<String>(
                label: 'Sélectionnez un niveau',
                value: selectedLevel,
                items: levels,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedLevel = newValue!;
                  });
                },
              ),
              const SizedBox(height: 40),
              _buildStartButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScoreCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Score: $score',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Meilleur Score: $highScore',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.green[600],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStartButton() {
    return ElevatedButton(
      onPressed: () async {
        List<Question> allQuestions = await ChargerQuestions.chargerQuestions();
        QuestionCtrl quizController = QuestionCtrl(allQuestions);
        quizController.Commencer(selectedTheme, selectedLevel);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizPage(
              quizController: quizController,
              theme: selectedTheme,
              niveau: selectedLevel,
              onScoreUpdate: _updateScore, // Pass the update function
            ),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green[600],
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 5, // Ajouter une ombre pour un effet de profondeur
      ),
      child: const Text(
        'Commencer le Quiz',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildDropdown<T>({
    required String label,
    required T value,
    required List<T> items,
    required ValueChanged<T?> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.green[800],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.green[300]!),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 1,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: DropdownButton<T>(
            value: value,
            onChanged: onChanged,
            isExpanded: true,
            underline: SizedBox(),
            items: items.map((T item) {
              return DropdownMenuItem<T>(
                value: item,
                child: Text(
                  item.toString(),
                  style: const TextStyle(fontSize: 16),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
