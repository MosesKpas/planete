import 'package:flutter/material.dart';

class EnergieSolairePage extends StatelessWidget {
  const EnergieSolairePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/energesolaire.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.orangeAccent,
            title: const Text(
              'Énergie Solaire',
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
                    "Le soleil, astre lumineux très puissant, pouvant produire de la chaleur et de la lumière.",
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    "L’énergie solaire est une source d’énergie qui est dépendante du soleil. "
                    "C’est une énergie verte car sa production ne produit aucun CO2. "
                    "Il existe 3 types d’exploitation de l’énergie solaire.",
                  ),
                  _buildSectionTitle('1. L’énergie solaire photovoltaïque'),
                  _buildSectionContent(
                    "Elle est obtenue par l’énergie des rayonnements du soleil. "
                    "Elle vise à transporter l’énergie portée par les photons dans la lumière en électricité.\n\n"
                    "Fonctionnement :\n"
                    "- Les cellules photovoltaïques absorbent l’énergie des photons lumineux lorsqu’elles sont exposées à la lumière.\n"
                    "- Ces photons vont générer un courant électrique continu qui sera converti en courant alternatif grâce à un onduleur.\n\n"
                    "Il faut avoir :\n"
                    "- Un panneau solaire\n"
                    "- Un onduleur\n"
                    "- Un compteur",
                  ),
                  _buildSectionTitle('2. L’énergie solaire thermique'),
                  _buildSectionContent(
                    "Elle exploite le rayonnement solaire afin de le transformer directement en chaleur. "
                    "Elle ne produit pas d’électricité mais de la chaleur. "
                    "Elle utilise 2 technologies : technologie solaire thermo à haute température et à basse température.",
                  ),
                  _buildSectionTitle('3. L’énergie solaire thermodynamique'),
                  _buildSectionContent(
                    "Elle est produite via des centrales solaires à concentration. "
                    "C’est un assemblage de miroirs contenant des fluides caloporteurs couplés à un générateur d’électricité solaire.",
                  ),
                  _buildSectionTitle('Avantages'),
                  _buildSectionContent(
                    "1. Pas d’émission de CO2.\n"
                    "2. Est une énergie renouvelable.\n"
                    "3. Peut couvrir une partie de besoins en électricité ou en chaleur.\n"
                    "4. Opportunité pour faire des économies et réduire les factures d’électricité.",
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    "3 milliards de personnes dépendent du bois et du charbon pour la cuisson et le chauffage.\n"
                    "13% de la population mondiale n’a pas accès à l’électricité.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Utilisez-vous cette énergie ?\n"
                    "2. Pensez-vous qu’elle vous sera bénéfique ?\n"
                    "3. Allez-vous agir ?",
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
          color: Colors.orangeAccent,
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
