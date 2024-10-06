import 'package:flutter/material.dart';

class EconomieVertePage extends StatelessWidget {
  const EconomieVertePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/econoverte.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Économie Verte',
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
                    "L’humanité s’est développée avec un système économique prédateur des ressources. "
                    "Une prise de conscience est donc nécessaire et primordiale au vu de la quantité limitée et épuisable de certaines ressources, "
                    "et pour ce faire, il faut revoir notre modèle économique.",
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    "L’économie verte est un modèle économique qui obéit aux règles, principes et critères du développement durable. "
                    "Elle vise à assurer le bien-être humain tout en garantissant la protection de l’environnement et des ressources naturelles. "
                    "C’est un modèle économique basé sur 6 secteurs selon Karl Burkout :",
                  ),
                  _buildSectionContent(
                    "- Les énergies renouvelables\n"
                    "- Les constructions écologiques\n"
                    "- Les moyens de transport\n"
                    "- La gestion de l’eau\n"
                    "- La gestion des déchets\n"
                    "- L’aménagement du territoire",
                  ),
                  _buildSectionTitle('Objectifs'),
                  _buildSectionContent(
                    "1. Maintenir l’équilibre naturel\n"
                    "2. Assurer la justice sociale dans la répartition des ressources naturelles\n"
                    "3. Préconiser un mode de production plus responsable avec les principes de l’écologie industrielle",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Pensez-vous que c’est un bon modèle économique ?\n"
                    "2. Votre secteur est-il concerné ?",
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
