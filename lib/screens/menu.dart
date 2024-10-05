import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Principal'),
        backgroundColor: Colors.green.shade700, // Couleur de l'en-tête
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2, // Deux colonnes
          crossAxisSpacing: 20, // Espacement horizontal entre les éléments
          mainAxisSpacing: 20, // Espacement vertical entre les éléments
          children: [
            _buildMenuCard(Icons.explore, 'Explorer', Colors.green),
            _buildMenuCard(Icons.star, 'Favoris', Colors.orange),
            _buildMenuCard(Icons.videogame_asset, 'Jeux', Colors.blue),
            _buildMenuCard(Icons.person, 'Profil', Colors.purple),
            _buildMenuCard(Icons.settings, 'Paramètres', Colors.red),
            _buildMenuCard(Icons.info, 'A propos', Colors.teal),
          ],
        ),
      ),
    );
  }

  // Fonction pour créer des cartes de menu
  Widget _buildMenuCard(IconData icon, String label, Color color) {
    return GestureDetector(
      onTap: () {
        // Action à définir pour chaque carte (navigation ou autre)
      },
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.9),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            SizedBox(height: 20),
            Text(
              label,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
