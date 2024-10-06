import 'package:flutter/material.dart';

class ConstructionEcologiqueEtVilleDurablePage extends StatelessWidget {
  const ConstructionEcologiqueEtVilleDurablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/constdurable.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Construction Écologique et Ville Durable',
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
                    '« Le combat contre le changement climatique se déroulera dans les villes. '
                    'Ces dernières peuvent constituer le problème ou la solution, quoi qu’il en soit, nous devons savoir ce qui se passe dans nos villes. » - Andrew Steer\n\n'
                    'Le 11e objectif du développement durable, construire des villes durables, est une priorité pour le développement durable. '
                    'Aujourd’hui, avec l’urbanisation, les défis d’avoir des villes durables qui répondent aux normes environnementales deviennent pressants. '
                    'Selon l’ONU, la moitié de la population mondiale vit dans les villes, et cette proportion pourrait s’accroître en 2030 à 60%.',
                  ),
                  _buildSectionTitle('Est-ce important ?'),
                  _buildSectionContent(
                    'Aujourd’hui, les villes et les zones métropolitaines représentent 70% des émissions de gaz à effet de serre et plus de 60% des ressources en énergie. '
                    'Si nous n’assurons pas une bonne gestion de nos villes, nous fonçons vers un mur.\n\n'
                    'L’urbanisation incontrôlée expose à plusieurs contraintes telles que :\n'
                    '- La mauvaise gestion des déchets, qui crée des pollutions et des maladies.\n'
                    'Les 4 secteurs d’émissions dans nos villes sont :\n'
                    '1. L’énergie\n'
                    '2. Le transport\n'
                    '3. L’industrie\n'
                    '4. Les bâtiments',
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    'Plusieurs stratégies peuvent être adoptées :\n'
                    '1. Encadrer l’urbanisation\n'
                    '2. Encourager la transition énergétique\n'
                    '3. Passer à l’électrique pour nos véhicules\n'
                    '4. Privilégier le transport en commun et le vélo\n'
                    '5. Encadrer la collecte et gestion des déchets',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- 883 millions de personnes vivent dans des bidonvilles aujourd’hui.\n'
                    '- Selon la Banque Mondiale, 3,6 milliards de personnes dans le monde restent privées des services d’assainissement.\n'
                    '- Près de 80% de la population mondiale pratique la défécation à l’air libre.\n'
                    '- 80% des habitants des zones urbaines sont exposés à des niveaux de qualité de l’air ne respectant pas les limites fixées par l’OMS.',
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    '1. Vivez-vous dans une ville ?\n'
                    '2. Votre ville adopte-t-elle des pratiques durables ?\n'
                    '3. Que préconise le gouvernement où vous pour réduire les émissions de gaz à effet de serre dans votre ville ?\n'
                    '4. Allez-vous agir ?',
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
