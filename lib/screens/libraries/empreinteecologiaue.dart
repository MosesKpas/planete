import 'package:flutter/material.dart';

class EmpreinteEcologiquePage extends StatelessWidget {
  const EmpreinteEcologiquePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/emprecolo.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Empreinte Écologique',
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
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    "Différente de l’empreinte carbone, l’empreinte écologique mesure la pression qu’exerce l’homme sur la planète. "
                    "Elle se mesure en hectares globaux (hag) ou en nombre de planètes. "
                    "Elle aide à connaître la surface terrestre dont un individu a besoin pour subvenir à ses besoins.",
                  ),
                  _buildSectionTitle('Est-ce important ?'),
                  _buildSectionContent(
                    "Oui, l’empreinte écologique nous permet de lutter efficacement contre le réchauffement climatique. "
                    "Ainsi, la connaissance de son empreinte écologique aidera les populations à lutter contre le réchauffement climatique. "
                    "Pour calculer son empreinte écologique, il faut prendre en compte 2 facteurs :\n"
                    "1. La biocapacité de la Terre : c’est la capacité de la Terre à générer des ressources.\n"
                    "2. L’activité humaine et son impact écologique : c’est-à-dire les ressources consommées par les hommes et leurs déchets.\n"
                    "Faire la soustraction de facteur 2 - facteur 1 vous permettra de trouver une réponse ou vous pouvez utiliser un calculateur en ligne.",
                  ),
                  _buildSectionTitle('Comment la réduire ?'),
                  _buildSectionContent(
                    "L’empreinte écologique d’un individu dépend de son mode de vie. "
                    "Ainsi, il faudrait pour chaque individu réduire la taille de ses émissions de gaz à effet de serre dans toutes ses activités.",
                  ),
                  _buildSectionTitle('Statistique'),
                  _buildSectionContent(
                    "- Il nous faudrait 1,7 planète Terre pour régénérer ce que l’on consomme.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Allez-vous agir ?\n"
                    "2. Comment ?",
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
