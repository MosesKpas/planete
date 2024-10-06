import 'package:flutter/material.dart';

class EconomieCirculairePage extends StatelessWidget {
  const EconomieCirculairePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/econocircu.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.blueAccent,
            title: const Text(
              'Économie Circulaire',
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
                    "L'économie circulaire fait partie de l'économie verte.",
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    "C’est un système de production, d’échange et de consommation qui vise à optimiser "
                    "l’utilisation des ressources à toutes les étapes du cycle de vie d’un bien ou d’un service "
                    "dans une logique circulaire, tout en réduisant l’empreinte environnementale et en contribuant "
                    "au bien-être des individus et des collectivités. "
                    "En bref, l’économie circulaire consiste à produire des biens et des services de manière durable, "
                    "en limitant la consommation, le gaspillage des ressources et la production des déchets.",
                  ),
                  _buildSectionTitle('Avantages'),
                  _buildSectionContent(
                    "1. Favorise une meilleure gestion des déchets et leur recyclage.\n"
                    "2. Permet de créer de nouvelles activités, notamment dans le secteur de l’éco-conception, "
                    "la gestion des ressources naturelles et celui des énergies renouvelables.\n"
                    "3. S’illustre parfaitement avec les 5R :\n"
                    "- Refuser tous les produits à usage unique.\n"
                    "- Réduire la consommation des biens.\n"
                    "- Réutiliser tout ce qui peut l’être.\n"
                    "- Recycler tout ce qui ne peut pas être utilisé.\n"
                    "- Rendre à la terre tous les déchets organiques.",
                  ),
                  _buildSectionTitle('Les piliers'),
                  _buildSectionContent(
                    "L’économie circulaire repose sur 7 piliers :\n"
                    "1. L’approvisionnement durable en privilégiant les ressources renouvelables.\n"
                    "2. L’éco-conception.\n"
                    "3. L’écologie industrielle et territoriale.\n"
                    "4. L’économie de fonctionnalité.\n"
                    "5. La consommation responsable.\n"
                    "6. L’allongement de la durée d’usage.\n"
                    "7. Le recyclage.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Mettez-vous en pratique ce système ?\n"
                    "2. Encouragez-vous le recyclage ?\n"
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
}
