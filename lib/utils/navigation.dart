import 'package:flutter/material.dart';
import 'package:planete/screens/accueil.dart';
import 'package:planete/screens/profil.dart';
import 'package:planete/screens/jeux.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    const AccueilPage(),
    const JeuxPage(),
    const ProfilPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma Planète'),
        backgroundColor: Colors.green.shade900,
      ),
      drawer: _buildDrawer(context), // Le drawer est ici
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: Colors.green.withOpacity(0.9),
          indicatorColor: Colors.green.shade900,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          iconTheme: MaterialStateProperty.all(
            const IconThemeData(color: Colors.white),
          ),
        ),
        child: NavigationBar(
          height: 80,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: _currentIndex,
          onDestinationSelected: _onItemTapped,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Accueil',
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon: Icon(Icons.videogame_asset_outlined),
              label: 'Jeux',
              selectedIcon: Icon(Icons.videogame_asset),
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              label: 'Profil',
              selectedIcon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }

  // Fonction qui construit le Drawer
  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header du Drawer avec une image ou un logo
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green.shade900,
            ),
            child: const Text(
              'Menu Planète',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          // Liste des options de menu
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Accueil'),
            onTap: () {
              Navigator.pop(context);
              _onItemTapped(0); // Aller à la page Accueil
            },
          ),
          ListTile(
            leading: const Icon(Icons.videogame_asset),
            title: const Text('Jeux'),
            onTap: () {
              Navigator.pop(context);
              _onItemTapped(1); // Aller à la page Jeux
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profil'),
            onTap: () {
              Navigator.pop(context);
              _onItemTapped(2); // Aller à la page Profil
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Paramètres'),
            onTap: () {
              // Action pour ouvrir la page des paramètres
            },
          ),
        ],
      ),
    );
  }
}
