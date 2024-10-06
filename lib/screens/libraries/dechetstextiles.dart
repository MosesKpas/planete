import 'package:flutter/material.dart';

class DechetsTextilesPage extends StatelessWidget {
  const DechetsTextilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/dectext.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Déchets Textiles',
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
                    'Plus de 100 milliards de vêtements sont vendus chaque année. '
                    'Le textile est un élément essentiel de notre vie quotidienne. '
                    'Cependant, la fabrication de vêtements nécessite d’importantes ressources, et nous produisons tellement de vêtements '
                    'que leur gestion après usage devient un véritable problème. L’industrie textile génère 4 milliards de tonnes de gaz à effet de serre, '
                    'plus que les vols internationaux et le trafic maritime réunis.',
                  ),
                  _buildSectionTitle('Les procédés de fabrication des vêtements'),
                  _buildSectionContent(
                    'Il existe plusieurs méthodes pour produire des vêtements :\n'
                    '- À partir de matières végétales comme le coton, le raphia, le lin.\n'
                    '- À partir de matières d’origine animale comme la peau d’animal.\n'
                    '- À partir de matières chimiques.',
                  ),
                  _buildSectionTitle('Problème de gestion des déchets textiles'),
                  _buildSectionContent(
                    'La mauvaise gestion des vêtements après usage pose de sérieux problèmes. Certains pays, comme le Ghana ou le Chili, '
                    'deviennent des décharges à ciel ouvert pour ces vêtements, au détriment de l’environnement et des populations locales.',
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    'Pour réduire l’impact des déchets textiles, nous devons changer nos habitudes :\n'
                    '1. Privilégier les matières respectueuses de l’environnement.\n'
                    '2. Mieux entretenir nos vêtements pour les faire durer plus longtemps.\n'
                    '3. Utiliser la méthode BISOU avant d’acheter des vêtements :\n'
                    '   - **B** : Besoin\n'
                    '   - **I** : Immédiat\n'
                    '   - **S** : Semblable\n'
                    '   - **O** : Origine\n'
                    '   - **U** : Utile\n'
                    '4. Privilégier les labels éthiques et écoresponsables.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- Un quart de la production mondiale de fibres provient du coton.\n'
                    '- Il faut 9000 litres d’eau pour produire un seul jean.',
                  ),
                  //_buildImage('assets/images/textile_stats.jpg'),
                  const SizedBox(height: 20),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    '1. Combien d’habits avez-vous ?\n'
                    '2. Vous sont-ils tous utiles ?\n'
                    '3. Y a-t-il des vêtements que vous ne portez pas ?\n'
                    '4. Que faites-vous des vêtements que vous ne portez pas ?',
                  ),
                  //_buildImage('assets/images/responsible_clothing.jpg'),
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
