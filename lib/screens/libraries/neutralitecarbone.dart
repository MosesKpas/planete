import 'package:flutter/material.dart';

class NeutraliteCarbonePage extends StatelessWidget {
  const NeutraliteCarbonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/neutrecarbone.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Neutralité Carbone',
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
                    "Plusieurs stratégies sont mises en place pour lutter contre le réchauffement climatique et parmi ces activités, "
                    "on note la neutralité carbone à atteindre d’ici 2050.",
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    "C’est le rapport entre ce que l’on rejette comme gaz à effet de serre et ce qu’il faut pour leur disparition. "
                    "C’est l’équilibre entre les émissions qu’on rejette et leur absorption.",
                  ),
                  _buildSectionTitle('Enjeux'),
                  _buildSectionContent(
                    "Pour que cette neutralité soit effective, il faut que le rapport entre les émissions et leur absorption soit en équilibre. "
                    "L’un des grands enjeux est celui de réduire notre dépendance aux énergies fossiles, "
                    "car nos puits de carbone à eux seuls ne peuvent pas absorber la totalité de nos émissions.",
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent("1. Investir massivement dans les énergies renouvelables et diversifier le mix énergétique."),
                  _buildSectionContent("2. Développer une agriculture durable."),
                  _buildSectionContent("3. Passer à un modèle économique respectueux de l’environnement."),
                  _buildSectionContent("4. Privilégier les technologies bas carbone."),
                  _buildSectionTitle('Statistique'),
                  _buildSectionContent(
                    "On estime que les puits de carbone absorbent 9,5 à 11 giga tonnes de CO2 contre 38 giga tonnes émis en 2019.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Utilisez-vous des énergies renouvelables ?\n"
                    "2. Adoptez-vous des pratiques moins polluantes ?\n"
                    "3. Allez-vous agir ?",
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
          color: Colors.orangeAccent,
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
