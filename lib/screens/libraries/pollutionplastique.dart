import 'package:flutter/material.dart';

class PollutionPlastiquePage extends StatelessWidget {
  const PollutionPlastiquePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/pollution.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.teal,
            title: const Text(
              'Pollution plastique',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
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
                      'Présent dans notre quotidien,plusieurs objets que nous'
                      ' utilisons sont fait à partir de lui .'
                      'L’homme en a tellement fabriqué sans tenir compte de sa'
                      ' durée de vie et des moyens efficaces pour son élimination,'
                      'c’est ainsi qu’il est devenu aujourd’hui un problème majeur'
                      ' pour notre planète.on estime que dans le monde 1 million '
                      'de bouteilles en plastique sont vendues chaque minute.'),
                  _buildSectionTitle('Origine'),
                  _buildSectionContent(
                      'Le plastique est un matériel obtenu par polymérisation.'
                      'c’est un produit dérivé du pétrole'),
                  //_buildImage('assets/images/logo.jpg'),
                  const SizedBox(height: 20),
                  _buildSectionTitle('Son danger'),
                  _buildSectionContent(
                      'A cause de sa longue durée de vie entre 100 à 500 ans voir'
                      ' plus,de son élimination difficile à cause de sa matière,le'
                      ' plastique mal géré présente un grand danger pour'
                      ' l’environnement.'
                      'Dans l’océan le plastique peut se dégrader en plus petit '
                      'morceau et ainsi être ingéré par des animaux marins causant'
                      ' ainsi leur mort '),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    '-contrôler sa consommation de plastique\n'
                    '-éviter les plastiques à usages uniques\n'
                    '-toujours jeter des objets en plastique dans une poubelle\n'
                    '-encourager le recyclage\n'
                    '-opter pour des emballages biodégradables',
                  ),
                  //_buildImage('assets/images/logo.jpg'),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '-le plastique est responsable de 3,4% des émissions de gaz'
                    ' à effet de serre:\n'
                    '-entre 5 et 13 millions de tonnes de plastique se '
                    'retrouvent dans les océans chaque année\n'
                    '-seulement 9% du plastique produit dans le monde est '
                    'recyclé et 12% est incinéré \n'
                    '-la production annuelle est de 460 millions de tonnes\n'
                    '-le plastique représente 80% des déchets dans la mer',
                  ),
                  _buildSectionTitle('À vous d\'agir !'),
                  _buildSectionContent(
                    '1.avez-vous conscience du danger du plastique ?\n'
                    '2.où finissent vos déchets en plastique ?\n'
                    '3.utilisez vous des emballages biodégradables ?\n'
                    '4.comptez vous en utiliser ?',
                  ),
                  _buildSectionTitle('Recommandation'),
                  _buildSectionContent(
                    'Fixez vous 2 objectifs :\n'
                    '1.toujours jeter vos déchets en plastique dans une poubelle\n'
                    '2 Procurez-vous et utilisez des emballages biodégradables.',
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
          color: Colors.teal,
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
