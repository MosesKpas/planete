import 'package:flutter/material.dart';

class AgriculturePage extends StatelessWidget {
  const AgriculturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/agriculture.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.brown,
            title: const Text(
              'Agriculture Durable',
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
                  _buildSectionContent(''),
                  _buildSectionTitle('Dangers'),
                  _buildSectionContent(
                    "Plusieurs techniques et pratiques ont été introduites dans l’agriculture pour la rendre plus productive et performante, mais cela n’est pas sans danger. "
                    "Les pesticides, les engrais chimiques et les organismes génétiquement modifiés sont des pratiques préoccupantes.",
                  ),
                  _buildSectionTitle('Conséquences'),
                  _buildSectionContent(
                    "La consommation des produits issus d’une agriculture exposée à des engrais chimiques, pesticides et OGM cause de nombreuses maladies à l’homme et détruit des écosystèmes.",
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    "1. Passer à une agriculture durable et respectueuse de l’environnement (Agroécologie).\n"
                    "2. Favoriser les produits bio.\n"
                    "3. Utiliser des engrais organiques.\n"
                    "4. Éviter les pesticides.",
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    "- L’agriculture consomme 70% de l’eau douce.\n"
                    "- 1/3 de la surface mondiale a été aménagée pour l’agriculture.\n"
                    "- 50% des céréales produites dans le monde sont destinées à nourrir le bétail.\n"
                    "- 40% des terres cultivables sont dégradées.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Avez-vous des connaissances sur le mode de production de vos produits ?\n"
                    "2. Consommez-vous bio ?\n"
                    "3. Consommez-vous des produits exposés à ces pratiques néfastes ?\n"
                    "4. Allez-vous agir ?\n"
                    "5. Comment ?",
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
