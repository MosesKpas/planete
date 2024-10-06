import 'package:flutter/material.dart';

class DeveloppementDurablePage extends StatelessWidget {
  const DeveloppementDurablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/devdurable.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Développement Durable',
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
                    'Le développement durable est une approche qui vise à améliorer les conditions de vie du présent sans compromettre les ressources pour les générations futures. '
                    'Il s’agit d’un équilibre entre le bien-être économique, social et environnemental.',
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    'Le développement durable permet de satisfaire les besoins du présent sans compromettre la capacité des générations futures à répondre aux leurs. '
                    'Ce concept est né lors du sommet de Rio de Janeiro en 1992 et a été renforcé lors du sommet mondial du développement durable à Johannesburg en 2002.',
                  ),
                  _buildSectionTitle('Les trois piliers du développement durable'),
                  _buildSectionContent(
                    'Le développement durable repose sur trois piliers essentiels :\n'
                    '1. **Environnement** : Protéger notre écosystème et préserver la biodiversité.\n'
                    '2. **Social** : Assurer l’équité et le bien-être des populations.\n'
                    '3. **Économie** : Promouvoir une croissance économique durable et équitable.\n'
                    'Il est crucial que ces trois facteurs soient pris en compte pour garantir un développement véritablement durable.',
                  ),
                  _buildSectionTitle('Recommandations'),
                  _buildSectionContent(
                    'Pour encourager le développement durable, nous devons :\n'
                    '1. Encourager les actions qui préconisent le développement durable.\n'
                    '2. Former les populations sur les pratiques et les enjeux du développement durable.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- Les pays du G20 sont responsables de 78% des émissions de gaz à effet de serre.\n'
                    '- Les 1% les plus riches de la population mondiale sont responsables de plus d’émissions de gaz à effet de serre que les 50% les plus pauvres.\n'
                    '- Selon l’ONU, nous utilisons l’équivalent de 1,6 planète Terre pour maintenir notre mode de vie actuel.',
                  ),
                  //_buildImage('assets/images/statistiques_developpement_durable.jpg'),
                  const SizedBox(height: 20),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    'Réfléchissez à votre environnement et à votre impact :\n'
                    '1. Le développement durable est-il visible dans votre région ?\n'
                    '2. Les actions en faveur du développement durable sont-elles encouragées ?',
                  ),
                  //_buildImage('assets/images/agir_developpement_durable.jpg'),
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
