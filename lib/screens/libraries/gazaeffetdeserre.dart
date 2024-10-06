import 'package:flutter/material.dart';

class GazaEffetDeSerrePage extends StatelessWidget {
  const GazaEffetDeSerrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/gazeffet.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Gaz à effet de serre',
              style: TextStyle(
                color: Colors.black,
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
                    'L’effet de serre est un phénomène naturel qui réchauffe la terre '
                    'car sans lui, la température sur terre serait de -18°C. '
                    'Cependant, depuis un certain temps, on parle des gaz à effet de serre, '
                    'dont la présence dans l’atmosphère augmente le réchauffement climatique.',
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    'Les gaz à effet de serre sont des composants gazeux de l’atmosphère '
                    'qui contribuent à l’effet de serre. Les principaux gaz à effet de serre sont :\n'
                    '- Le dioxyde de carbone (CO2)\n'
                    '- Le méthane (CH4)\n'
                    '- Le protoxyde d’azote (N2O)\n'
                    '- L’hexafluorure de soufre (SF6)',
                  ),
                  _buildSectionTitle('D’où viennent-ils ?'),
                  _buildSectionContent(
                    'Les activités humaines sont demandeuses en énergie, et l’utilisation de cette énergie '
                    'favorise le dégagement des gaz à effet de serre. Voici les secteurs les plus contributeurs :\n'
                    '- Secteur de l’énergie : 41% des émissions\n'
                    '- Secteur du transport : 25%\n'
                    'Les pays comme les USA et la Chine sont parmi les plus grands contributeurs.',
                  ),
                  //_buildImage('assets/images/greenhouse_gas_sources.jpg'),
                  const SizedBox(height: 20),
                  _buildSectionTitle('Comment lutter ?'),
                  _buildSectionContent(
                    '- En réduisant nos déchets\n'
                    '- En consommant bio\n'
                    '- En utilisant des énergies propres et renouvelables\n'
                    '- En passant aux véhicules électriques',
                  ),
                  _buildSectionTitle('À vous d\'agir'),
                  _buildSectionContent(
                    '1. Utilisez-vous des énergies renouvelables ?\n'
                    '2. Laquelle de vos activités dégage le plus de CO2 ?\n'
                    '3. Combien de véhicules avez-vous ?\n'
                    '4. Sont-ils électriques ?',
                  ),
                  //_buildImage('assets/images/green_energy.jpg'),
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
