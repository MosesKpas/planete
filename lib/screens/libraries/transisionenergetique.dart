import 'package:flutter/material.dart';

class TransitionEnergetiquePage extends StatelessWidget {
  const TransitionEnergetiquePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/transenergie.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.blue,
            title: const Text(
              'La Transition Énergétique',
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
                    'Les énergies que nous utilisons sont beaucoup plus polluantes et participent activement au réchauffement de notre planète. '
                    'Il faut un passage à des énergies plus propres.',
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    'La transition énergétique est l’ensemble de changements que subissent les modèles de production, de distribution et de consommation d’énergie afin de les rendre plus écologiques ou respectueux de l’environnement. '
                    'Elle met l’accent sur les énergies renouvelables et non polluantes.',
                  ),
                  _buildSectionTitle('Enjeux'),
                  _buildSectionContent(
                    'Plusieurs enjeux :\n'
                    '- Réduire les émissions de CO2\n'
                    '- Sécuriser les systèmes énergétiques\n'
                    '- Diminuer la dépendance aux énergies fossiles\n'
                    '- Protéger la santé et l’environnement',
                  ),
                  _buildSectionTitle('5 raisons pour accélérer cette transition'),
                  _buildSectionContent(
                    '1. Les énergies renouvelables sont présentes partout autour de nous.\n'
                    '2. Les énergies renouvelables sont moins chères.\n'
                    '3. Les énergies renouvelables sont plus saines.\n'
                    '4. Les énergies renouvelables favorisent la création d’emplois.\n'
                    '5. Les énergies renouvelables constituent un choix économiquement judicieux.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- 29% de l’électricité provient des sources renouvelables.\n'
                    '- L’électricité bon marché provenant des sources renouvelables pourrait constituer 65% de l’approvisionnement total en électricité dans le monde d’ici 2030 et pourrait permettre de décarboner 90% du secteur de l’électricité d’ici 2050.',
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    '1. Utilisez-vous des énergies renouvelables ?\n'
                    '2. Lesquelles ?\n'
                    '3. Pensez-vous qu’elles sont bonnes ?',
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
          color: Colors.lightBlueAccent,
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
