import 'package:flutter/material.dart';

class DeforestationPage extends StatelessWidget {
  const DeforestationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/deforestation.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Déforestation',
              style: TextStyle(
                color: Colors.black,
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
                    'La forêt joue un rôle crucial dans la lutte contre le réchauffement climatique, '
                    'elle sert d’habitat pour de nombreuses espèces végétales, animales, ainsi que des populations humaines. '
                    'Cependant, toutes ces fonctions sont menacées par la déforestation.',
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    'La déforestation est la perte de surface forestière au profit d’autres utilisations des terres. '
                    'Aujourd’hui, de nombreuses forêts sont coupées au profit de l’agriculture, de l’élevage, et des exploitations minières et pétrolières.',
                  ),
                  _buildSectionTitle('Causes'),
                  _buildSectionContent(
                    '- Transformation des forêts en terres agricoles ou pour d’autres activités\n'
                    '- Coupe illégale du bois',
                  ),
                  _buildSectionTitle('Conséquences'),
                  _buildSectionContent(
                    '- Perte de la biodiversité animale et végétale\n'
                    '- Fragilisation du sol\n'
                    '- Disparition des peuples autochtones\n'
                    '- Accélération du changement climatique\n'
                    'Les arbres jouent un rôle vital en capturant le CO2 dans l’atmosphère. La forêt amazonienne, le bassin du Congo, et Bornéo '
                    'constituent les principaux poumons verts de la planète.',
                  ),
                  //_buildImage('assets/images/deforestation_consequences.jpg'),
                  const SizedBox(height: 20),
                  _buildSectionTitle('Solutions'),
                  _buildSectionContent(
                    '- Faire du reboisement\n'
                    '- Effectuer des coupes sélectives et contrôlées du bois\n'
                    '- Financer la protection des forêts',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- Les forêts recouvrent 31% de la planète\n'
                    '- Chaque année, elles absorbent 1,2 milliards de tonnes de CO2\n'
                    '- Selon la FAO, environ 13 millions d’hectares de forêts disparaissent chaque année',
                  ),
                  _buildSectionTitle('À vous d’agir'),
                  _buildSectionContent(
                    '1. Pratiquez-vous le reboisement ?\n'
                    '2. Combien d’arbres plantez-vous par an ?\n'
                    '3. Maintenant que vous connaissez l’importance des forêts, allez-vous planter des arbres ?',
                  ),
                  //_buildImage('assets/images/reboisement.jpg'),
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
          color: Colors.green,
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

  Widget _buildImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        height: 200,
        width: double.infinity,
      ),
    );
  }
}
