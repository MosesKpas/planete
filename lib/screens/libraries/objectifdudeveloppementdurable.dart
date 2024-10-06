import 'package:flutter/material.dart';

class ObjectifDeveloppementDurablePage extends StatelessWidget {
  const ObjectifDeveloppementDurablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/objecdurable.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.blue,
            title: const Text(
              'Objectifs de Développement Durable',
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
                    'Les Objectifs de Développement Durable (ODD) sont 17 objectifs établis par les États membres des Nations Unies, '
                    'rassemblés dans l’Agenda 2030 créé en 2015. Ils définissent les cibles à atteindre d’ici 2030.',
                  ),
                  _buildSectionTitle('Liste des 17 ODD'),
                  _buildSectionContent(
                    '1. Zéro pauvreté\n'
                    '2. Zéro faim\n'
                    '3. Faciliter l’accès à la santé\n'
                    '4. Garantir l’accès à l’éducation pour tous\n'
                    '5. Promouvoir l’égalité des sexes\n'
                    '6. Garantir l’accès à une eau salubre et à l’assainissement\n'
                    '7. Recourir aux énergies renouvelables\n'
                    '8. Garantir l’accès à des emplois décents\n'
                    '9. Garantir l’innovation et les infrastructures\n'
                    '10. Réduire les inégalités\n'
                    '11. Construire des villes durables\n'
                    '12. Garantir une consommation responsable\n'
                    '13. Lutte contre le changement climatique\n'
                    '14. Protection de la faune et flore aquatique\n'
                    '15. Protection de la faune et flore terrestre\n'
                    '16. Justice et paix dans le monde\n'
                    '17. Partenariat pour les objectifs mondiaux\n'
                    'La réalisation de ces ODD nous rapproche d’un monde meilleur.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- Selon l’ONU, 25 000 personnes, dont plus de 10 000 enfants, meurent de la faim et de causes associées.\n'
                    '- 854 millions de personnes sont sous-alimentées dans le monde.\n'
                    '- Plus de 60 % des personnes vivant dans l’extrême pauvreté sont des femmes.\n'
                    '- 244 millions d’enfants et de jeunes âgés de 6 à 18 ans ne vont toujours pas à l’école, et plus de 40 % de ces enfants vivent en Afrique subsaharienne.',
                  ),
                  const SizedBox(height: 20),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    'Réfléchissez à votre impact sur les ODD :\n'
                    '1. Quels sont les ODD visibles dans votre région ?\n'
                    '2. Quels sont les ODD qui ne sont pas encore visibles ?\n'
                    '3. Lequel vous concerne le plus ?',
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
