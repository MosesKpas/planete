import 'package:flutter/material.dart';

class TerresRaresPage extends StatelessWidget {
  const TerresRaresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/terrerare.jpg', // Assurez-vous d'avoir une image appropriée
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.blue,
            title: const Text(
              'Terres Rares',
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
                    "Nouvelles technologies, robotique, voiture électrique, téléphone... "
                    "Ces objets prennent de plus en plus de place aujourd'hui grâce à ces éléments. "
                    "De l’anglais \"rare earth elements\", les terres rares font l’objet d’une grande attention à l’ère de la technologie.",
                  ),
                  _buildSectionTitle('C’est quoi ?'),
                  _buildSectionContent(
                    "Ce sont des groupes de métaux aux propriétés voisines utilisées dans un grand nombre de procédés de fabrication de haute technologie. "
                    "À l’ère de la transition énergétique, ils sont d’une importance non négligeable, car ils servent à fabriquer des ampoules basse consommation, "
                    "des véhicules hybrides, des rotors d’éoliennes, des batteries, et tant d’autres. "
                    "On en dénombre 17 : Lanthane, Cérium, Parseodyme, Néodyme, Prométhium, Samarium, Europium, Gadolinium, Terbium, Dysprosium, Holmium, "
                    "Erbium, Thulium, Ytterbium, Lutécium, Scandium, Yttrium.",
                  ),
                  _buildSectionContent(
                    "Ces métaux ne sont pas si rares comme leur nom l’indique, car ils sont présents dans toutes les zones d’extraction minières. "
                    "Il est juste rare d’en trouver à de grandes concentrations dans un même lieu. "
                    "La Chine et les USA dominent le classement des producteurs. "
                    "L’extraction et le raffinage des terres rares nécessitent d'énormes quantités d'énergie, d'eau, d'acides forts et de solvants.",
                  ),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    "1. Possédez-vous des objets qui en contiennent ?\n"
                    "2. Sont-elles exploitées dans votre pays ?",
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
