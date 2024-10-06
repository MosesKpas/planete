import 'package:flutter/material.dart';

class EnergieRenouvelablePage extends StatelessWidget {
  const EnergieRenouvelablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/energrenouv.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.greenAccent,
            title: const Text(
              'Énergies Renouvelables',
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
                    'Les énergies non renouvelables que nous utilisons ont été sources de pollution de l’environnement, '
                    'pour leur durabilité, les énergies renouvelables constituent une réelle alternative aux énergies non renouvelables.',
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    'Les énergies renouvelables proviennent des sources d’énergie dont le renouvellement est assez rapide. '
                    'Elles sont plus propres, non polluantes et constituent une solution dans la lutte contre le réchauffement climatique. '
                    'On peut citer :\n'
                    '- L’énergie solaire\n'
                    '- L’énergie éolienne\n'
                    '- L’énergie hydraulique\n'
                    '- L’énergie géothermique\n'
                    'Et tant d’autres.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- Le soleil produit en 1 heure toute l’énergie de la terre en 1 année.\n'
                    '- En 2021, 567 millions de personnes en Afrique subsaharienne n’avaient pas accès à l’électricité.\n'
                    '- La part de consommation mondiale d’électricité renouvelable est passée de 26,3% en 2019 à 28,2% en 2020.',
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    '1. Utilisez-vous une forme d’énergie renouvelable ?\n'
                    '2. Laquelle ?\n'
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
          color: Colors.greenAccent,
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
