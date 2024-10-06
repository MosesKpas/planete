import 'package:flutter/material.dart';

class ObjectifZeroFaimPage extends StatelessWidget {
  const ObjectifZeroFaimPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/objetzerofaim.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.orange,
            title: const Text(
              'Objectif Zéro Faim',
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
                    'La faim caractérise le degré d’inégalité qui règne dans le monde. '
                    'Le monde s’est fixé comme objectif de mettre fin à ce fléau qui tue les populations les plus vulnérables. '
                    'Le problème de la faim est dû à plusieurs facteurs :\n'
                    '- Les conflits armés entraînant des déplacements de populations.\n'
                    '- Le changement climatique.\n'
                    '- La pauvreté.\n'
                    '- Les inégalités.',
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    'Plusieurs stratégies peuvent être adoptées :\n'
                    '- Utiliser des pratiques agricoles adaptées au changement climatique.\n'
                    '- Opter pour un modèle agroalimentaire durable :\n'
                    '  - Produire localement.\n'
                    '  - Réduire les facteurs d’augmentation des coûts dans la production.\n'
                    '  - Intégrer la nutrition dans la stratégie agricole des pays.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- Entre 691 et 783 millions de personnes ont été victimes de la faim en 2022 dans le monde.\n'
                    '- Plus de 3,1 milliards de personnes n’ont pas les moyens d’avoir une alimentation saine.\n'
                    '- 1 personne meurt de la faim chaque 4 secondes.\n'
                    '- 45 millions d’enfants de moins de 5 ans souffrent de la forme la plus mortelle de malnutrition.\n'
                    '- 149 millions d’enfants de moins de 5 ans présentent un retard de croissance, alors que 39 millions seraient en surpoids.',
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
          color: Colors.orange,
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
