import 'package:flutter/material.dart';

class DechetsEquipementElectroniquePage extends StatelessWidget {
  const DechetsEquipementElectroniquePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/decelectro.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.blueGrey,
            title: const Text(
              'Déchets d\'équipements électroniques',
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
                    'Les équipements électroniques, qu’il s’agisse de téléphones, d’ordinateurs ou d’appareils électroménagers, '
                    'sont omniprésents dans notre quotidien et nous facilitent la vie. Cependant, leur gestion en fin de vie pose un énorme problème environnemental.',
                  ),
                  _buildSectionTitle('Où terminent-ils ?'),
                  _buildSectionContent(
                    'La plupart des déchets électroniques ne sont pas recyclés. Ils finissent souvent dans des décharges incontrôlées, notamment en Afrique. '
                    'En 2019, près de 53,6 millions de tonnes de déchets électroniques ont été produits dans le monde, mais seulement 17,4 % ont été collectés et recyclés.',
                  ),
                  _buildSectionTitle('Quel danger pour l’homme ?'),
                  _buildSectionContent(
                    'Ces appareils contiennent des composantes toxiques qui représentent un danger pour l’homme et l’environnement, '
                    'en raison des substances chimiques libérées lorsqu’ils ne sont pas correctement traités.',
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    'Pour mieux gérer les déchets d’équipements électroniques, nous devons adopter des comportements responsables :\n'
                    '1. Recycler, réparer, réutiliser les appareils lorsque c’est possible.\n'
                    '2. Appliquer la politique des 5R de l’économie circulaire : Refuser, Réduire, Réutiliser, Réparer, Recycler.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- En 2019, la valeur des composantes électroniques recyclées était estimée à 48 milliards d’euros.\n'
                    '- Les réfrigérateurs et climatiseurs mis au rebut représentent 0,3 % des émissions mondiales de gaz à effet de serre, selon l’ONU.',
                  ),
                  //_buildImage('assets/images/recyclage_electronique.jpg'),
                  const SizedBox(height: 20),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    '1. Combien d’appareils électroniques possédez-vous ?\n'
                    '2. Que faites-vous de vos appareils en fin de vie ?\n'
                    '3. Où jetez-vous vos appareils lorsqu’ils ne fonctionnent plus ?',
                  ),
                 // _buildImage('assets/images/responsible_electronics.jpg'),
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
          color: Colors.blueGrey,
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
