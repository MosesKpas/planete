import 'package:flutter/material.dart';

class EnergieEoliennePage extends StatelessWidget {
  const EnergieEoliennePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/energelolienne.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.lightBlue,
            title: const Text(
              'Énergie Éolienne',
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
                    "Elle fait partie des plus anciennes formes d’exploitation d’énergie de l’humanité. "
                    "Inspirée des bateaux à voiles ou des moulins à grains, l’énergie éolienne est aujourd’hui une option durable dans la production d’énergie.",
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    "C’est une énergie produite à partir du vent. "
                    "Le vent fait tourner les pales d’une éolienne et l’énergie mécanique du rotor est transformée en électricité grâce à un générateur.",
                  ),
                  _buildSectionTitle('Types'),
                  _buildSectionContent(
                    "On peut citer :\n"
                    "1. L’éolienne horizontale :\n"
                    "C’est le type d’éolienne qu’on voit le plus souvent. Ses pales en forme d’hélice captent le vent et tournent autour d’un axe horizontal par rapport au sol pour actionner un générateur.\n\n"
                    "2. L’éolienne verticale :\n"
                    "Moins répandue que les horizontales, leur fonctionnement est similaire, mais avec les éoliennes verticales, les pales tournent autour d’une tige verticale et l’électricité mécanique générée est transformée en énergie électrique par un générateur.",
                  ),
                  _buildSectionTitle('Avantages'),
                  _buildSectionContent(
                    "1. Disponible partout sur la planète.\n"
                    "2. Peut être adaptée à des milieux urbains.\n"
                    "3. Les terrains sous éolienne restent exploitables.\n"
                    "4. Est renouvelable et propre.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Utilisez-vous cette forme d’énergie ?\n"
                    "2. Pensez-vous qu’elle est bonne ?",
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
          color: Colors.lightBlue,
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
