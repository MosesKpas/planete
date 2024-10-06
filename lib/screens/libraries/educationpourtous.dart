import 'package:flutter/material.dart';

class EducationPourTousPage extends StatelessWidget {
  const EducationPourTousPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/education.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.blue,
            title: const Text(
              'Éducation Pour Tous',
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
                    'C’est le 4e objectif du développement durable. '
                    'L’accès à l’éducation est un atout de poids pour le développement durable, plus l’accès à l’éducation sera abordable, plus les connaissances sur plusieurs domaines seront ouvertes à tous. '
                    'Hélas, les inégalités persistent. Aujourd’hui, plus de la moitié des enfants qui n’ont pas accès à l’école vivent en Afrique subsaharienne. '
                    'On estime que 50% des enfants en âge de fréquenter l’école primaire ne sont pas scolarisés et vivent dans des zones touchées par des conflits.',
                  ),
                  _buildSectionTitle('Les blocages à l’éducation'),
                  _buildSectionContent(
                    'Ils sont multiples :\n'
                    '- Les conflits armés\n'
                    '- La pauvreté\n'
                    '- Le refus pour certains parents d’envoyer leurs enfants à l’école, surtout les filles.',
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    'Plusieurs solutions peuvent être proposées notamment :\n'
                    '1. Construire des établissements scolaires adaptés aux enfants, notamment ceux vivant avec handicap.\n'
                    '2. Mettre fin aux inégalités d’accès à l’enseignement liées au genre.\n'
                    '3. Faire du financement à l’éducation une priorité nationale.\n'
                    '4. Rendre l’enseignement gratuit et obligatoire à certains niveaux.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- 617 millions de jeunes dans le monde manquent de compétences de base en mathématiques et en alphabétisation.',
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    '1. L’accès à l’éducation est-elle garanti pour tous dans votre région ?\n'
                    '2. Si non, pourquoi ?\n'
                    '3. Que préconise le gouvernement pour ce domaine ?',
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
