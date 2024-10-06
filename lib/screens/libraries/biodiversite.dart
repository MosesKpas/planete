import 'package:flutter/material.dart';

class BiodiversitePage extends StatelessWidget {
  const BiodiversitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/biodiversite.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Biodiversité',
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
                    'La vie, un phénomène précieux observé uniquement sur Terre, se présente sous plusieurs formes. '
                    'La Terre est la seule planète abritant la vie, mais cette vie est menacée et, parfois, forcée de disparaître.',
                  ),
                  _buildSectionTitle('C’est quoi la biodiversité ?'),
                  _buildSectionContent(
                    'La biodiversité est l’ensemble des espèces vivantes sur Terre. '
                    'Elle représente la diversité des êtres vivants qui maintient notre planète en équilibre.',
                  ),
                  _buildSectionTitle('Importance'),
                  _buildSectionContent(
                    'La biodiversité est essentielle pour le bon fonctionnement des écosystèmes et la survie de l’humanité. '
                    'Elle fournit des biens et des services vitaux comme la nourriture, l’habitat, le traitement des maladies, et bien d’autres.',
                  ),
                  _buildSectionTitle('Menaces'),
                  _buildSectionContent(
                    '- La déforestation, qui entraîne la perte des espèces animales et végétales\n'
                    '- La chasse et la pêche\n'
                    '- Les espèces invasives, qui perturbent certains écosystèmes\n'
                    '- Le changement climatique\n'
                    '- La pollution',
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    '- Agir contre le réchauffement climatique\n'
                    '- Lutter contre la déforestation\n'
                    '- Réduire la chasse de loisir',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- Plus de 680 espèces de vertébrés ont disparu\n'
                    '- Selon l’UICN, sur 150 388 espèces étudiées, 42 108 sont classées menacées\n'
                    '- Depuis 1900, le monde a perdu 50% de ses zones humides\n'
                    '- 41% des amphibiens, 13% des oiseaux et 27% des mammifères sont menacés d’extinction\n'
                    '- 36% des coraux constructeurs de récifs sont menacés d’extinction\n'
                    '- 37% des espèces de requins sont menacées d’extinction',
                  ),
                  //_buildImage('assets/images/biodiversity_stats.jpg'),
                  const SizedBox(height: 20),
                  _buildSectionTitle('À vous d’agir'),
                  _buildSectionContent(
                    '1. Protégez-vous la biodiversité ?\n'
                    '2. Pensez-vous qu’elle est utile pour vous ?\n'
                    '3. Quel service elle vous rend ?',
                  ),
                  //_buildImage('assets/images/protect_biodiversity.jpg'),
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
