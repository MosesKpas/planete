import 'package:flutter/material.dart';

class EconomieBleuePage extends StatelessWidget {
  const EconomieBleuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/econoblue.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.teal,
            title: const Text(
              'Économie Bleue',
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
                    "L'économie bleue se concentre sur l'utilisation durable des ressources océaniques.",
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    "L’économie bleue c’est l’utilisation durable des ressources océaniques en faveur de la croissance économique, "
                    "l’amélioration des revenus et des emplois ainsi que la santé des écosystèmes océaniques. "
                    "Ce concept est apparu lors de la conférence des Nations unies sur le développement à Rio en 2012. "
                    "Les océans jouent plusieurs rôles, économiques, alimentaires et environnementaux. "
                    "C’est un carrefour où transitent plusieurs marchandises à destination des populations, "
                    "et nous devons assurer la protection des océans.",
                  ),
                  _buildSectionTitle('Les menaces qui planent sur les océans'),
                  _buildSectionContent(
                    "L’équilibre de nos océans peut être menacé par les activités humaines non contrôlées telles que :\n"
                    "- La surpêche.\n"
                    "- La pollution plastique.\n"
                    "- Les exploitations pétrolières, qui peuvent exposer à des risques de marées noires.",
                  ),
                  _buildSectionTitle('Activités maritimes'),
                  _buildSectionContent(
                    "Les principales activités maritimes incluent :\n"
                    "- Transport maritime.\n"
                    "- Industrie navale et nautique.\n"
                    "- La pêche.\n"
                    "- Les câbles sous-marins.\n"
                    "- Les énergies marines renouvelables.\n"
                    "- Infrastructures portuaires.\n"
                    "- Tourisme et croisière.\n"
                    "- Aquaculture et tant d’autres.",
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    "- 3/4 des ressources de pêche sont épuisées ou en déclin.\n"
                    "- Chaque année, 8 millions de tonnes de plastique finissent dans l’océan.\n"
                    "- Selon la FAO, 60 millions de personnes dans le monde sont employées dans le secteur de la pêche et de l’aquaculture.\n"
                    "- Selon l’OCDE, les océans apportent chaque année à l’économie mondiale une valeur ajoutée de 1.500 milliards de dollars.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Êtes-vous concernés par les océans ?\n"
                    "2. Dans quel secteur ?\n"
                    "3. Avez-vous accès à des produits marins ?",
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
          color: Colors.tealAccent,
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
