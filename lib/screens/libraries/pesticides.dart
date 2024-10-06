import 'package:flutter/material.dart';

class PesticidesPage extends StatelessWidget {
  const PesticidesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/pesticides.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Pesticides',
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
                    "Dans le souci de combattre ceux qui le dérangent ou ceux qui dérangent ses activités, notamment agricoles, l’homme a eu recours à certains outils qui l’ont aidé. "
                    "Mais à un prix fort.",
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    "Un pesticide est une substance utilisée pour lutter contre les organismes considérés comme nuisibles. "
                    "Ils servent à repousser ou combattre les ravageurs et les espèces indésirables. "
                    "Les pesticides sont beaucoup plus utilisés dans le secteur agricole, notamment pour protéger les cultures et les plantes. "
                    "Mais leur utilisation n’est pas sans danger pour ceux qui y sont exposés.",
                  ),
                  _buildSectionTitle('Les dangers'),
                  _buildSectionContent(
                    "Sur l’homme, ils peuvent avoir des impacts divers tels que des irritations cutanées, des cancers, des troubles neurologiques, des problèmes respiratoires et des anomalies congénitales.\n"
                    "Sur l’environnement, ils peuvent contaminer les sols et les eaux souterraines et tuer les insectes qui font la pollinisation.",
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    "1. Interdire ou assurer une réglementation dans l’usage de certains pesticides.\n"
                    "2. Favoriser les produits bio et une agriculture durable.\n"
                    "Et plus encore.",
                  ),
                  _buildSectionTitle('Statistique'),
                  _buildSectionContent(
                    "- En Europe, 350.000 tonnes de pesticides sont utilisés chaque année.",
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
