import 'package:flutter/material.dart';

class PeuplesAutochtonesPage extends StatelessWidget {
  const PeuplesAutochtonesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/peuplauto.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.brown,
            title: const Text(
              'Peuples Autochtones',
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
                    "Ils forment 6,2% de la population mondiale avec plus de 476 millions de personnes réparties dans 90 pays. "
                    "Ils sont parfois considérés comme les premiers habitants d’une région, souvent caractérisés par un système de pensée et de vivre différent de celui des peuples non autochtones. "
                    "Les peuples autochtones représentent une grande diversité culturelle et linguistique qu’ils ont pérennisée depuis des siècles. "
                    "Aujourd’hui, ils sont confrontés à de nombreux défis qui mettent en danger leur survie :\n"
                    "- Le changement climatique\n"
                    "- Le manque de services sociaux en leur faveur\n"
                    "- L’absence de représentation politique pour faire valoir leurs droits\n"
                    "- Le non-respect de leurs droits\n"
                    "Tous ces problèmes ne sont pas de bonnes augures pour ces peuples alors qu’ils ont beaucoup à nous apprendre.",
                  ),
                  _buildSectionTitle('Comment peuvent-ils aider ?'),
                  _buildSectionContent(
                    "Le FAO donne cinq exemples qui montrent que ces peuples peuvent aider le monde à lutter contre le réchauffement climatique par leurs pratiques :\n"
                    "1. Leurs pratiques agricoles traditionnelles sont parfois mieux adaptées au changement climatique (une agriculture adaptée à des conditions extrêmes).\n"
                    "2. Ils gèrent la conservation et la restauration des forêts et des ressources naturelles.\n"
                    "3. Leur alimentation et leurs traditions peuvent contribuer à élargir et à diversifier les régimes alimentaires.\n"
                    "4. Ils font pousser des cultures indigènes plus résistantes au changement climatique.\n"
                    "5. Ils préservent une grande partie de la biodiversité mondiale.\n"
                    "Ils vivent en harmonie avec la terre sans la dégrader, et nous devons apprendre d’eux et les protéger.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Connaissez-vous des peuples autochtones dans votre pays ?\n"
                    "2. Sont-ils considérés ?\n"
                    "3. Que fait le gouvernement pour eux ?\n"
                    "4. À vous d’agir !!",
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
          color: Colors.lightGreen,
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
