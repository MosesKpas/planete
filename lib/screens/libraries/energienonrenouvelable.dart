import 'package:flutter/material.dart';

class EnergieNonRenouvelablePage extends StatelessWidget {
  const EnergieNonRenouvelablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/energnonrenou.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.redAccent,
            title: const Text(
              'Énergies Non Renouvelables',
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
                    'C’est quoi?\n'
                    'Une source d’énergie qui se renouvelle moins vite qu’on ne la consomme, c’est tout l’opposé des énergies renouvelables. '
                    'Leurs réserves sont limitées et s’épuisent au fil du temps.',
                  ),
                  _buildSectionTitle('Types d’énergies non renouvelables'),
                  _buildSectionContent(
                    'On peut distinguer les énergies fossiles et l’énergie nucléaire.\n\n'
                    '1. L’énergie fossile :\n'
                    'Elle provient de la décomposition très lente d’éléments organiques comme les plantes ou animaux depuis plusieurs millions d’années. '
                    'Elle est composée de carbone, hydrogène et d’oxygène et est libérée sous forme d’énergie thermique lors de sa combustion. '
                    'Elle est très polluante et participe activement au réchauffement climatique. '
                    'Elle est épuisable. On peut citer :\n'
                    '- Le gaz naturel\n'
                    '- Le charbon\n'
                    '- Le pétrole\n\n'
                    '2. L’énergie nucléaire :\n'
                    'Non fossile, ne rejette pas de CO2, mais produit des déchets radioactifs extrêmement dangereux pour l’homme et son environnement. '
                    'Elle est produite par la fission de l’uranium, et lors de cette fission, une grande quantité d’énergie thermique est libérée afin de produire de l’électricité.',
                  ),
                  _buildSectionContent(
                    'L’utilisation des énergies non renouvelables nous expose à de nombreux risques tels que des pollutions, de réchauffement climatique, et le fait qu’elles soient épuisables n’arrange rien.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- 80% de l’énergie totale consommée dans le monde est d’origine non renouvelable.\n'
                    '- Le pétrole est la première source d’énergie dans le monde.\n'
                    '- 2,3 milliards de personnes dépendent de combustibles nocifs pour cuisiner.',
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    '1. Utilisez-vous des énergies non renouvelables ?\n'
                    '2. Êtes-vous conscient de leur dangerosité ?\n'
                    '3. Allez-vous agir ?\n'
                    '4. Comment ?',
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
          color: Colors.redAccent,
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
