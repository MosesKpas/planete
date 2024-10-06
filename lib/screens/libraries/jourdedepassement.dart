import 'package:flutter/material.dart';

class JourDuDepassementPage extends StatelessWidget {
  const JourDuDepassementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/jourdepasse.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.red,
            title: const Text(
              'Jour du Dépassement',
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
                    "On entend de plus en plus que passer une certaine date, l’humanité vit à crédit. Cette date marque le jour dit du dépassement.",
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    "Le jour du dépassement c’est lorsque l’humanité a consommé toutes les ressources que notre planète peut régénérer en 1 année. "
                    "Depuis des années, cette date ne fait que se rapprocher.",
                  ),
                  _buildSectionTitle('Causes'),
                  _buildSectionContent(
                    "Une cause majeure de ce jour de dépassement est la surexploitation des ressources naturelles. "
                    "Nous exploitons abusivement les ressources sans tenir compte de leur capacité à se renouveler.",
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    "Agir de manière responsable en :",
                  ),
                  _buildBulletPoint("1. Favorisant une utilisation responsable des ressources naturelles."),
                  _buildBulletPoint("2. Ne prélevant que le nécessaire."),
                  _buildBulletPoint("3. Évitant le gaspillage."),
                  _buildBulletPoint("4. Revoyant notre alimentation."),
                  _buildBulletPoint("Et plus encore !"),
                  _buildSectionTitle('Différentes dates'),
                  _buildSectionContent(
                    "2022 : 28 juillet\n"
                    "2021 : 29 juillet\n"
                    "2020 : 22 août\n"
                    "2019 : 29 juillet\n"
                    "2018 : 1 août",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Votre utilisation des ressources est-elle responsable ?\n"
                    "2. Que devez-vous changer ?\n"
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

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 10),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.black87),
      ),
    );
  }
}
