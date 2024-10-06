import 'package:flutter/material.dart';

class MicroPlastiquesPage extends StatelessWidget {
  const MicroPlastiquesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/micoplast.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.blueGrey,
            title: const Text(
              'Microplastiques',
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
                    'Les microplastiques sont de minuscules particules de plastique qui se retrouvent partout dans notre environnement. '
                    'Ils sont un sous-produit des plus gros plastiques dégradés ou sont intentionnellement ajoutés dans certains produits de consommation.',
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    'Un microplastique est une particule de plastique dont la taille est inférieure à 5 micromètres. Ces minuscules particules '
                    'peuvent entrer dans la chaîne alimentaire, être ingérées par des animaux marins et même finir dans nos assiettes.',
                  ),
                  _buildSectionTitle('D’où viennent-ils ?'),
                  _buildSectionContent(
                    'Les microplastiques peuvent provenir de la dégradation de plastiques plus gros ou être intentionnellement fabriqués. '
                    'On les retrouve notamment dans l’industrie cosmétique (billes exfoliantes, gommages), dans les vêtements synthétiques, les baumes à lèvres, et même les mégots de cigarettes.',
                  ),
                  _buildSectionTitle('Sont-ils dangereux ?'),
                  _buildSectionContent(
                    'Les microplastiques représentent une menace importante pour l’environnement et la santé humaine. Ils contaminent nos océans, '
                    'nos sols, et peuvent entrer dans notre chaîne alimentaire. Ils ne se dégradent pas facilement, persistant longtemps dans la nature.',
                  ),
                  _buildSectionTitle('Que faire ?'),
                  _buildSectionContent(
                    'Pour réduire notre production de microplastiques, plusieurs actions peuvent être prises :\n'
                    '1. Éviter les plastiques à usage unique.\n'
                    '2. Opter pour des exfoliants naturels comme la farine d\'avoine au lieu de produits contenant des microbilles de plastique.\n'
                    '3. Recycler nos déchets plastiques.\n'
                    '4. Choisir des vêtements en matières naturelles et durables.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- 9 % des rejets annuels de microplastiques dans les océans proviennent des vêtements et autres textiles.\n'
                    '- Les mégots de cigarettes sont les déchets plastiques les plus communs sur les plages, avec près de 600 milliards de cigarettes consommées chaque année.\n'
                    '- 90 % des plastiques que nous utilisons quotidiennement sont des plastiques jetables.',
                  ),
                  //_buildImage('assets/images/microplastiques_plage.jpg'),
                  const SizedBox(height: 20),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    '1. Pensez-vous que vous produisez des microplastiques dans votre quotidien ?\n'
                    '2. Que devez-vous changer pour réduire votre empreinte plastique ?',
                  ),
                  //_buildImage('assets/images/agir_microplastiques.jpg'),
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
