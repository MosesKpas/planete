import 'package:flutter/material.dart';

class CriseDeLeauPage extends StatelessWidget {
  const CriseDeLeauPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/crise.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.blue,
            title: const Text(
              'Crise de l\'eau',
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
                    'L’eau, c’est la vie ! Elle recouvre près de 70% de la surface de la Terre et est indispensable à l’expansion de la vie. '
                    'Malheureusement, dans certaines régions du globe, l’eau est devenue une ressource rare et précieuse.',
                  ),
                  _buildSectionTitle('C’est quoi la crise de l’eau ?'),
                  _buildSectionContent(
                    'La crise de l’eau correspond à la pénurie ou à l’épuisement des réserves naturelles d’eau. '
                    'Seule une petite partie de l’eau disponible sur Terre est douce (2,5%), le reste étant de l’eau salée.',
                  ),
                  _buildSectionTitle('Causes'),
                  _buildSectionContent(
                    '- Sécheresses répétitives et accentuées par le réchauffement climatique\n'
                    '- Pollution des sources d’eau\n'
                    '- Utilisation excessive et gaspillage',
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    '- Adopter une gestion durable des ressources en eau\n'
                    '- Réutiliser les eaux après traitement\n'
                    '- Encourager le dessalement de l’eau de mer',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- 30% de la population mondiale, soit 2,1 milliards de personnes, n’a pas accès à l’eau potable\n'
                    '- 75% de l’eau douce est utilisée pour l’agriculture\n'
                    '- 190 millions d’enfants n’ont pas accès à l’eau\n'
                    '- Chaque année, 1,4 million de personnes meurent en raison de l’inadéquation des services d’eau, d’assainissement, et d’hygiène\n'
                    '- 1,8 milliard de personnes vivent dans des ménages sans accès à un point d’eau à domicile (UNICEF)\n'
                    '- En Inde, une femme parcourt en moyenne 14 000 km par an pour collecter de l’eau, portant jusqu’à 40 kg chaque jour',
                  ),
                  //_buildImage('assets/images/water_crisis_stats.jpg'),
                  const SizedBox(height: 20),
                  _buildSectionTitle('À vous d’agir'),
                  _buildSectionContent(
                    '1. Utilisez-vous abusivement de l’eau ?\n'
                    '2. Quelle de vos activités consomme le plus d’eau ?\n'
                    '3. Que comptez-vous faire pour vous améliorer ?\n'
                    '4. Avez-vous accès à l’eau potable ?',
                  ),
                 // _buildImage('assets/images/save_water.jpg'),
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
          color: Colors.blue,
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
