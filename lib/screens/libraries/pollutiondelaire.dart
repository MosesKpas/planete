import 'package:flutter/material.dart';

class PollutionDeLAirPage extends StatelessWidget {
  const PollutionDeLAirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/poluaire.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.blueGrey,
            title: const Text(
              'Pollution de l\'air',
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
                    'La pollution de l’air est une problématique mondiale. Elle est causée par la présence dans l’air de substances nuisibles, '
                    'qui la rendent dangereuse pour la santé humaine et pour l’environnement.',
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    'La pollution de l’air se définit par la présence dans l’atmosphère de substances chimiques, physiques ou biologiques, '
                    'qui peuvent être nuisibles aux êtres vivants ou au climat. Ces substances, souvent produites par l’activité humaine, '
                    'peuvent rendre l’air dangereux à respirer.',
                  ),
                  _buildSectionTitle('Comment l’air est-elle polluée ?'),
                  _buildSectionContent(
                    'La pollution de l’air peut provenir de sources humaines, comme le trafic routier, les émissions industrielles, '
                    'et les activités agricoles. Elle peut aussi être causée par des phénomènes naturels, tels que les feux de forêt '
                    'et les émissions de gaz comme le méthane.',
                  ),
                  _buildSectionTitle('Qui sont les polluants ?'),
                  _buildSectionContent(
                    'Les principaux polluants de l’air incluent :\n'
                    '1. Le monoxyde de carbone (CO)\n'
                    '2. Le dioxyde de soufre (SO₂)\n'
                    '3. Les particules fines (PM10 et PM2.5), qui sont particulièrement dangereuses car elles pénètrent profondément dans les poumons.',
                  ),
                  _buildSectionTitle('C’est dangereux ?'),
                  _buildSectionContent(
                    'Oui, la pollution de l’air est un facteur majeur de maladies respiratoires et cardiaques. Elle est également responsable de certains cancers. '
                    'Les effets peuvent être immédiats ou se manifester à long terme, affectant la santé de millions de personnes à travers le monde.',
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    'Pour lutter contre la pollution de l’air, nous pouvons :\n'
                    '1. Favoriser l’utilisation des énergies renouvelables (solaire, éolienne, etc.).\n'
                    '2. Encourager la transition énergétique, en limitant l’utilisation des énergies fossiles et en adoptant des solutions plus propres.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- 9 personnes sur 10 respirent un air dont la qualité dépasse les limites fixées par l’Organisation mondiale de la santé (OMS).\n'
                    '- Selon l’OMS, 7 millions de personnes meurent chaque année à cause des substances polluantes présentes dans l’air.\n'
                    '- La pollution de l’air intérieur a causé 3,2 millions de décès en 2020, dont plus de 237 000 enfants de moins de 5 ans.',
                  ),
                  //_buildImage('assets/images/statistiques_pollution_air.jpg'),
                  const SizedBox(height: 20),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    'Chacun peut contribuer à réduire la pollution de l’air en adoptant des gestes simples :\n'
                    '1. Limitez les déplacements en voiture en privilégiant les transports en commun ou le vélo.\n'
                    '2. Utilisez des appareils électroménagers à faible consommation d’énergie.\n'
                    '3. Optez pour des sources d’énergie renouvelables lorsque cela est possible.',
                  ),
                  _buildSectionContent(
                    'Répondez à ces questions pour réfléchir à votre impact sur la qualité de l’air :\n'
                    '1. Êtes-vous victime ou acteur de cette pollution ?\n'
                    '2. La qualité de l’air est-elle prise en compte dans votre région ?\n'
                    '3. Quels moyens sont mis en œuvre dans votre communauté pour lutter contre la pollution de l’air ?',
                  ),
                 // _buildImage('assets/images/agir_pollution_air.jpg'),
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
          color: Colors.blueGrey,
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
