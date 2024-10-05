import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image de profil
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://www.w3schools.com/w3images/avatar2.png'),
                ),
              ),
              const SizedBox(height: 20),

              // Nom de l'utilisateur
              const Text(
                'Jo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              // Email de l'utilisateur
              const Text(
                'Jo@inOrder.com',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 30),

              // Progression de lecture
              _buildProgressSection(
                icon: Icons.book,
                title: 'Lecture en cours',
                progress: 0.75, // 75% de progression
                subtitle: '3 livres en cours',
              ),
              const SizedBox(height: 20),

              // Nombre de catégories visitées
              _buildProgressSection(
                icon: Icons.category,
                title: 'Catégories Visitées',
                progress: 0.50, // 50% de progression
                subtitle: '12/24 catégories',
              ),
              const SizedBox(height: 20),

              // Score au jeu
              _buildProgressSection(
                icon: Icons.videogame_asset,
                title: 'Score aux jeux',
                progress: 0.80, // 80% de score
                subtitle: '1200 points',
              ),
              const SizedBox(height: 20),

              // Score élevé dans une catégorie spécifique
              _buildProgressSection(
                icon: Icons.star,
                title: 'Meilleur Score',
                progress: 0.95, // 95% de score élevé
                subtitle: 'Quiz rapide : 1500 points',
              ),
              const SizedBox(height: 30),

              // Bouton de déconnexion
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Action de déconnexion à définir
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.red.shade700, // Couleur du bouton de déconnexion
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Déconnexion',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget pour la section de progression avec icône, titre et barre de progression
  Widget _buildProgressSection({
    required IconData icon,
    required String title,
    required double progress,
    required String subtitle,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Icône
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.green.shade100,
              child: Icon(icon, size: 30, color: Colors.green),
            ),
            const SizedBox(width: 20),

            // Contenu de la section
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Barre de progression
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey.shade200,
                    color: Colors.green.shade700,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
