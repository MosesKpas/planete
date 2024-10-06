import 'package:flutter/material.dart';

class BassinDuCongoPage extends StatelessWidget {
  const BassinDuCongoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/bassincongo.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.teal,
            title: const Text(
              'Bassin du Congo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            titleSpacing: 20,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  _buildSectionTitle('Avez-vous déjà entendu parler ?'),
                  _buildSectionContent(
                    "Avec une superficie de 3 730 474 km², c’est une région située au centre de l’Afrique centrale, "
                    "avec un vaste couvert forestier représentant la deuxième plus grande forêt pluviale de la planète après l’Amazonie. "
                    "Il peut ainsi aider à stocker le CO2 en grande quantité. "
                    "C’est le plus grand puits de carbone au monde, car il absorbe plus que l’Amazonie. "
                    "Il s’étend sur 6 pays, dont la République Démocratique du Congo en grande partie, d’où le nom de pays solution face au changement climatique.",
                  ),
                  _buildSectionTitle('Enjeux'),
                  _buildSectionContent(
                    "Il représente un grand espoir pour le monde, non seulement dans le rôle qu’il joue dans la lutte contre le réchauffement climatique, "
                    "mais aussi parce qu’il abrite une biodiversité importante. "
                    "On y retrouve plus de 10 000 espèces de plantes tropicales, dont 30 % sont endémiques à la région, "
                    "plus de 400 espèces de mammifères, plus de 1000 espèces d’oiseaux et plus de 700 espèces de poissons. "
                    "Il abrite plus de 75 millions de personnes et plus de 150 groupes ethniques. "
                    "Tout cet écosystème est menacé par la déforestation et les exploitations illicites des ressources naturelles, il faut agir !",
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    "1. Mettre plus de moyens financiers pour la protection de ce bassin.\n"
                    "2. Encourager la recherche pour mieux connaître la zone et ainsi bien orienter les efforts de protection.\n"
                    "3. Encadrer la coupe du bois et encourager le reboisement.",
                  ),
                  _buildSectionTitle('Statistique'),
                  _buildSectionContent(
                    "- Le bassin du Congo absorbe 750 millions de tonnes de CO2 par an.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Faites-vous partie de la région ?\n"
                    "2. Êtes-vous concerné par le réchauffement climatique ?\n"
                    "3. Maintenant que vous connaissez l’importance, agissez !!!",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.lightGreen,
        ),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        content,
        style: const TextStyle(fontSize: 16, color: Colors.black87),
      ),
    );
  }
}
