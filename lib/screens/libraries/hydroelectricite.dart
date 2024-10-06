import 'package:flutter/material.dart';

class HydroElectricitePage extends StatelessWidget {
  const HydroElectricitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/hydro.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.blueAccent,
            title: const Text(
              'Hydroélectricité',
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
                    "L’homme a besoin d’énergie pour réaliser ses activités au quotidien et il tire cette énergie de plusieurs sources.",
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    "C’est lorsque l’énergie cinétique du courant d’eau est transformée en énergie mécanique par une turbine, puis en énergie électrique par un alternateur. "
                    "L’hydroélectricité est la première source d’énergie renouvelable utilisée et la troisième toutes filières confondues, derrière le charbon et le gaz.",
                  ),
                  _buildSectionTitle('Les grands exploitants'),
                  _buildSectionContent(
                    "- La Chine (31%)\n"
                    "- Le Brésil (9,4%)\n"
                    "- Le Canada (8,8%)\n"
                    "- Les USA (6,7%)",
                  ),
                  _buildSectionTitle('Avantages'),
                  _buildSectionContent(
                    "1. Elle est propre et renouvelable.\n"
                    "2. Elle a un rendement performant.\n"
                    "3. Les centrales hydroélectriques ont une longue durée de vie.\n"
                    "4. Faible niveau d’émission de gaz à effet de serre.\n"
                    "5. Capacité d’indépendance énergétique.",
                  ),
                  _buildSectionTitle('Inconvénients'),
                  _buildSectionContent(
                    "1. Destruction des écosystèmes.\n"
                    "2. Coût d’installation.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Utilisez-vous cette forme d’énergie ?\n"
                    "2. Est-elle bonne ?",
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
          color: Colors.blueAccent,
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
