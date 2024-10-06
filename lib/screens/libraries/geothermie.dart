import 'package:flutter/material.dart';

class GeothermiePage extends StatelessWidget {
  const GeothermiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/geothermie.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Géothermie',
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
                    "La terre en elle-même peut aussi nous fournir de l’énergie, "
                    "car là réside une chaleur qui peut servir d’énergie.",
                  ),
                  _buildSectionTitle('Comment ça marche ?'),
                  _buildSectionContent(
                    "On fait circuler dans les profondeurs de la terre un fluide pour fracturer une roche chaude et imperméable. "
                    "Le fluide se chauffe et remonte, chargé d’énergie thermique, qui sera partiellement convertie en électricité. "
                    "Elle est propre, stable et inépuisable. Elle sert à la production d’électricité et de chaleur.",
                  ),
                  _buildSectionTitle('Types de géothermie'),
                  _buildSectionContent(
                    "On distingue 3 types :\n"
                    "1. La géothermie profonde à haute énergie : Pour la production d’électricité.\n"
                    "2. La géothermie moyenne à basse énergie : Sert au chauffage.\n"
                    "3. La géothermie à très basse énergie.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Utilisez-vous cette forme d’énergie ?\n"
                    "2. Pensez-vous qu’elle peut être utile ?",
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
}
