import 'package:flutter/material.dart';

class EgaliteDesSexesPage extends StatelessWidget {
  const EgaliteDesSexesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/egalsexe.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.pink,
            title: const Text(
              'Égalité des Sexes',
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
                    'Objectif du développement durable 5 et aussi objectif de la déclaration universelle des droits humains, il consiste à mettre sur un même pied d’égalité les hommes et les femmes et aussi interdire toute forme de discrimination liée à la question du sexe et des violences physiques. '
                    'Malgré tout, les inégalités persistent. Nous vivons dans certaines sociétés où les femmes sont bafouées et subissent toute forme de maltraitance. Lors de certaines prises de décisions, leurs voix ne sont pas considérées et les femmes n’ont souvent pas les mêmes accès que les hommes à certains postes.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- 20% des femmes et des filles âgées de 15 à 49 ans ont subi des violences physiques ou sexuelles de la part d’un partenaire intime sur une période de 12 mois.\n'
                    '- Le 2/3 des pays des régions en développement ont atteint l’égalité des sexes dans l’enseignement primaire.\n'
                    '- Plus de 100 pays ont pris des mesures pour suivre les allocations budgétaires en faveur de l’égalité des sexes.\n'
                    '- Seulement 66% des pays ont atteint la parité entre les genres dans l’enseignement primaire.\n'
                    '- Seulement 28 pays accordent aux femmes les mêmes droits juridiques que les hommes pour posséder et accéder à des terres.',
                  ),
                  _buildSectionContent(
                    'La voix des femmes doit compter dans la prise de décisions, car elles sont aussi porteuses de solutions face aux multiples défis dont est confronté notre planète. '
                    'Réduire leur voix, c’est fermer la porte à l’espoir pour notre planète.',
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    '1. Y a-t-il des inégalités dans votre région ?\n'
                    '2. Que préconise votre gouvernement ?\n'
                    '3. Les femmes ont-elles un accès facile à l’éducation dans votre région ?',
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
          color: Colors.pinkAccent,
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
