import 'package:flutter/material.dart';

class AccessibiliteAuxSoinsDeSantePage extends StatelessWidget {
  const AccessibiliteAuxSoinsDeSantePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/soinsante.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Accessibilité aux Soins de Santé',
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
                    'Tout homme a droit à des soins de santé de qualité pour lui garantir une meilleure vie. '
                    'Le 4e objectif du développement durable est primordial et important. '
                    'Des millions de gens en ce 21e siècle n’ont toujours pas accès à des soins de santé de qualité, '
                    'ce qui augmente le taux de mortalité des populations.\n\n'
                    'Parce que la santé n’a pas de prix, il nous faut agir pour le bien-être des communautés les plus exposées et vulnérables.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- Selon l’OMS, 5 millions d’enfants meurent avant leur 5e anniversaire.\n'
                    '- Le taux de mortalité maternelle est 14 fois plus élevé dans les pays en développement que dans les pays développés.\n'
                    '- En 2021, près de la moitié de la population mondiale était exposée au risque du paludisme.',
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
