import 'package:flutter/material.dart';
import 'package:planete/screens/bibliotheque.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({super.key});

  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100, // Couleur d'arrière-plan sobre
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bienvenue sur Planète',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Découvrez nos fonctionnalités exclusives !',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 40),

              // Grille avec 4 blocs stylés 2x2
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: [
                    _buildBlock(Icons.explore, 'Explorer', Colors.teal),
                    _buildBlock(Icons.star, 'Favoris', Colors.amber),
                    _buildBlock(Icons.play_arrow, 'Commencer', Colors.blue),
                    _buildBlock(
                        Icons.settings, 'Paramètres', Colors.deepOrange),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildBlock(IconData icon, String label, Color color) {
    return GestureDetector(
      onTap: () {
        if (label == 'Explorer') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BibliothequePage(),
            ),
          );
        } else {
          print('$label pressé');
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icône stylée
            Icon(icon, size: 50, color: color),
            const SizedBox(height: 20),
            // Texte du bloc
            Text(
              label,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
