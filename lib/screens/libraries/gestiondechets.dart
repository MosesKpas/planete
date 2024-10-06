import 'package:flutter/material.dart';

class GestionDechetsPage extends StatelessWidget {
  const GestionDechetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/gesdechets.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.brown,
            title: const Text(
              'Gestion des Déchets',
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
                    'Les activités humaines produisent de nombreux déchets qui, lorsqu’ils ne sont pas bien gérés, '
                    'créent des problèmes pour l’homme et l’environnement. Chaque année, la Terre produit environ 15 milliards de tonnes de déchets, '
                    'mais tous ne sont pas correctement gérés.',
                  ),
                  _buildSectionTitle('C’est quoi un déchet ?'),
                  _buildSectionContent(
                    'Un déchet est un objet en fin de vie, une substance ayant subi une altération physique ou chimique.',
                  ),
                  _buildSectionTitle('Comment sont-ils classés ?'),
                  _buildSectionContent(
                    'Les déchets peuvent être classés de différentes manières selon leur nature :\n'
                    '1. **Les déchets biodégradables** : composés de matières organiques naturelles, ils peuvent être compostés.\n'
                    '2. **Les déchets inertes** : non biodégradables, ils ne se décomposent pas. Exemples : bétons, briques.\n'
                    '3. **Les déchets recyclables** : peuvent être traités pour un nouvel usage, comme le plastique, le verre, le papier.\n'
                    '4. **Les déchets ultimes** : non exploitables ni par recyclage ni par valorisation énergétique, comme les solvants, déchets radioactifs.\n'
                    '5. **Les déchets dangereux** : possèdent des caractéristiques inflammables, toxiques, ou corrosives. Exemples : batteries, piles.',
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    'Adoptez une attitude responsable face aux déchets :\n'
                    '- Toujours jeter ses déchets dans une poubelle\n'
                    '- Avoir une poubelle à domicile.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- Les pays développés génèrent 34% des déchets mondiaux\n'
                    '- 44% des déchets sont organiques\n'
                    '- 17% des déchets sont en plastique\n'
                    '- Seulement 39% des déchets sont collectés dans les pays en développement, les autres sont souvent brûlés.',
                  ),
                  //_buildImage('assets/images/dechets_stats.jpg'),
                  const SizedBox(height: 20),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    '1. Avez-vous une poubelle chez vous ?\n'
                    '2. Que faites-vous de vos déchets en fin de vie ?\n'
                    '3. Êtes-vous en contact avec des agents d’assainissement ?\n'
                    '4. Pensez-vous que vous devez améliorer votre gestion des déchets ?',
                  ),
                  //_buildImage('assets/images/responsible_waste_management.jpg'),
                  _buildSectionTitle('Recommandation'),
                  _buildSectionContent(
                    'Fixez-vous des objectifs clairs :\n'
                    '- Toujours jeter vos déchets dans une poubelle.',
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
          color: Colors.brown,
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

  Widget _buildImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        height: 200,
        width: double.infinity,
      ),
    );
  }
}
