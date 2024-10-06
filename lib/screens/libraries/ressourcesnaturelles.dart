import 'package:flutter/material.dart';

class RessourcesNaturellesPage extends StatelessWidget {
  const RessourcesNaturellesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/ressnatu.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Ressources Naturelles',
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
                    "Une ressource naturelle est une substance, un organisme ou un objet présent dans la nature sans action humaine.",
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    "Une ressource naturelle est une substance, un organisme ou un objet présent dans la nature sans action humaine. "
                    "Son utilisation vise à satisfaire les besoins humains, animaux et végétaux. "
                    "Exemples : le poisson, l'or.\n\n"
                    "Elles sont réparties en deux groupes :",
                  ),
                  _buildSubSectionTitle('1. Ressources naturelles renouvelables'),
                  _buildSectionContent(
                    "Ce sont des ressources dont la capacité à se reconstituer se fait à courte échelle par rapport au temps humain. "
                    "Elles se renouvellent aussi vite qu'elles sont consommées.\n"
                    "Exemple : le poisson.",
                  ),
                  _buildSubSectionTitle('2. Ressources naturelles non renouvelables'),
                  _buildSectionContent(
                    "Elles ont un rythme de régénération très lent par rapport à l’utilisation. "
                    "Exemple : l'or.",
                  ),
                  _buildSectionContent(
                    "La bonne gestion des ressources naturelles va garantir la vie sur notre planète.",
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    "- 20% des hommes consomment 80% des ressources de la planète.\n"
                    "- 3/4 des ressources de la pêche sont épuisées.\n"
                    "- Chaque année, la date du jour de dépassement pour le renouvellement des ressources diminue.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Votre utilisation des ressources naturelles est-elle responsable ?\n"
                    "2. Prenez-vous le nécessaire pour vos besoins ?\n"
                    "3. Avez-vous conscience que certaines ressources naturelles s’épuisent ?",
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
          color: Colors.lightGreenAccent,
        ),
      ),
    );
  }

  Widget _buildSubSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
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
