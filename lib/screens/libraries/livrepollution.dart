import 'package:flutter/material.dart';

class LivrePollutionPage extends StatelessWidget {
  const LivrePollutionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/climat.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.teal,
            title: const Text(
              'Changement climatique',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
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
                    'Catastrophes naturelles à répétition, pics de chaleur, '
                    'sécheresses, hausse du niveau de la mer, disparition de la '
                    'banquise... Tant de choses auxquelles nous faisons face '
                    'aujourd\'hui. Mais c’est quoi le problème ?',
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    'Le changement climatique désigne les variations à long terme de la '
                    'température et des conditions météorologiques...',
                  ),
                 // _buildImage('assets/images/logo.jpg'),
                  const SizedBox(height: 20),
                  _buildSectionTitle('Les causes'),
                  _buildSectionContent(
                    'Parmi les causes du changement climatique on peut noter:\n'
                    '- l’utilisation des énergies fossiles\n'
                    '- la déforestation\n'
                    '- la production alimentaire\n'
                    '- les industries\n'
                    '- les transports et tant d’autres...',
                  ),
                  _buildSectionTitle('Les conséquences'),
                  _buildSectionContent(
                    'On note :\n'
                    '- la hausse des températures\n'
                    '- l’accroissement de la gravité des tempêtes et pluies\n'
                    '- les sécheresses fortes...',
                  ),
                  //_buildImage('assets/images/logo.jpg'),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    'Il faut agir sans attendre :\n'
                    '- en optant pour des énergies plus propres et respectueuses '
                    'de l’environnement\n'
                    '- en assurant la transition énergétique...',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- la température des 15 dernières années a été la plus élevée '
                    'jamais enregistrée\n'
                    '- la banquise a perdu 40% de son épaisseur en 40 ans...',
                  ),
                  _buildSectionTitle('À vous d\'agir !'),
                  _buildSectionContent(
                    '1. Êtes-vous touché par le réchauffement climatique ?\n'
                    '2. Quelle alternative appliquez-vous pour lutter contre le '
                    'réchauffement climatique ?\n'
                    '3. Quels effets du réchauffement climatique subissez-vous ?',
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
          color: Colors.teal,
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
