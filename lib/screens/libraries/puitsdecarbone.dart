import 'package:flutter/material.dart';

class PuitsDeCarbonePage extends StatelessWidget {
  const PuitsDeCarbonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/puitcarbone.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Puits de Carbone',
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
                    "Un puits de carbone est un système qui absorbe du carbone sans en émettre. "
                    "C’est un mécanisme naturel ou artificiel qui absorbe et stocke le CO2 dans l’atmosphère.",
                  ),
                  _buildSectionTitle('Différents types'),
                  _buildSectionContent(
                    "On distingue les puits de carbone naturels et artificiels :\n"
                    "1. **Les puits de carbone naturels :**\n"
                    "   - Les océans, qui absorbent une grande partie du carbone atmosphérique. Le carbone se dilue dans l’eau où il est stocké sous forme de bicarbonate ou utilisé par divers organismes marins.\n"
                    "   - Les forêts et les végétaux, qui absorbent le CO2 via la photosynthèse en le conservant dans les arbres.\n"
                    "   - Le sol et les tourbières, qui stockent aussi le CO2.\n"
                    "2. **Les puits de carbone artificiels :**\n"
                    "   Ce sont des techniques de capture du CO2 mises en place par l’homme, avec des aspirateurs à CO2 qui capturent le CO2 directement dans l’atmosphère.",
                  ),
                  _buildSectionTitle('Sont-ils importants ?'),
                  _buildSectionContent(
                    "Les puits de carbone jouent un rôle essentiel dans la régulation du climat, car ils absorbent une partie des émissions de CO2. "
                    "La protection des forêts, des océans et la préservation des tourbières doivent être encouragées.",
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    "- L’océan contient près de 40 000 milliards de tonnes de CO2.\n"
                    "- La plus grande tourbière tropicale du monde se trouve en République Démocratique du Congo avec environ 165 700 km² et stocke entre 26 à 32 milliards de tonnes de CO2.\n"
                    "- On estime que les puits naturels absorbent entre 9,5 et 11 gigatonnes de CO2 par an.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Maintenant que vous connaissez leur importance, allez-vous les protéger ?\n"
                    "2. Comment ?\n"
                    "3. Agissez !!",
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
          color: Colors.lightGreen,
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
