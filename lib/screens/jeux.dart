import 'package:flutter/material.dart';

class JeuxPage extends StatefulWidget {
  const JeuxPage({super.key});

  @override
  State<JeuxPage> createState() => _JeuxPageState();
}

class _JeuxPageState extends State<JeuxPage> {
  // Liste de jeux fictive avec des icônes et des noms
  final List<Map<String, dynamic>> jeux = [
    {'icon': Icons.quiz, 'title': 'Quiz Rapide'},
    {'icon': Icons.ac_unit, 'title': 'Gaz'},
    {'icon': Icons.delete, 'title': 'Déchets'},
    {'icon': Icons.fastfood, 'title': 'Aliments'},
  ];

  // Catégories de jeux en rapport avec l'environnement
  final List<String> categories = [
    'Climat',
    'Pollution',
    'Gestion des déchets',
    'Alimentation durable'
  ];

  // Score global (exemple fictif)
  double scoreFinal = 75.0; // Score fictif (75%)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bloc des catégories en rapport avec l'environnement
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade900,
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories.map((category) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      category,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.green.shade900,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 30),

            // Bloc de score final
            Text(
              'Score Final',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade900,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.score,
                  size: 40,
                  color: Colors.green.shade900,
                ),
                const SizedBox(width: 10),
                Text(
                  '$scoreFinal %',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Liste des jeux
            Expanded(
              child: ListView.builder(
                itemCount: jeux.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Icon(
                        jeux[index]['icon'],
                        size: 40,
                        color: Colors.green.shade900,
                      ),
                      title: Text(
                        jeux[index]['title'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // Action à définir pour chaque jeu
                        // Par exemple, naviguer vers la page du jeu sélectionné
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
