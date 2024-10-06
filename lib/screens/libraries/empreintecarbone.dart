import 'package:flutter/material.dart';

class EmpreinteCarbonePage extends StatelessWidget {
  const EmpreinteCarbonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/emprcarbone.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.blue,
            title: const Text(
              'Empreinte Carbone',
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
                    "La lutte contre le réchauffement climatique demande l’implication de tous. "
                    "L’homme, par son mode de vie, accélère ce réchauffement.",
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    "C’est un indicateur qui vise à mesurer l’impact d’une activité sur l’environnement. "
                    "Cet impact est généralement exprimé en dioxyde de carbone (CO2). "
                    "Différente de l’empreinte écologique, l’empreinte carbone prend en compte l’ensemble des gaz à effet de serre et sert à évaluer l’impact des activités humaines sur le climat. "
                    "Elle peut s’appliquer à une personne, des ménages, des entreprises, un territoire ou des produits.",
                  ),
                  _buildSectionTitle('Est-ce important ?'),
                  _buildSectionContent(
                    "Connaître son empreinte carbone permettra à chaque individu de mieux lutter contre le réchauffement climatique en changeant ses habitudes ou pratiques plus polluantes.",
                  ),
                  _buildSectionTitle('Comment réduire son empreinte carbone ?'),
                  _buildSectionContent("1. Passer à des énergies renouvelables."),
                  _buildSectionContent("2. Encourager le transport en commun et les voitures électriques."),
                  _buildSectionContent("3. Identifier les principales sources émettrices de gaz à effet de serre."),
                  _buildSectionTitle('Pour calculer'),
                  _buildSectionContent(
                    "- Quantité de gaz à effet de serre = quantité consommée x Facteur d’émission physique\n"
                    "- Utiliser un calculateur en ligne.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Connaissez-vous votre bilan carbone ?\n"
                    "2. Que comptez-vous faire pour réduire votre bilan carbone ?",
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
