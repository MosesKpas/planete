import 'package:flutter/material.dart';
import 'package:planete/screens/libraries/livrepollution.dart';

class BibliothequePage extends StatefulWidget {
  const BibliothequePage({super.key});

  @override
  State<BibliothequePage> createState() => _BibliothequePageState();
}

class _BibliothequePageState extends State<BibliothequePage> {
  final List<Map<String, dynamic>> livres = [
    {
      'title': 'Le Climat en Péril',
      'author': 'Jean Dupont',
      'image': 'assets/images/logo.jpg',
      'route': LivrePollutionPage(), // Route vers la page de détails
    },
    {
      'title': 'Pollution et Santé',
      'author': 'Marie Martin',
      'image': 'assets/images/logo.jpg',
      'route': LivrePollutionPage(), // Exemple de redirection
    },
    {
      'title': 'Gestion Durable des Déchets',
      'author': 'Paul Durand',
      'image': 'assets/images/logo.jpg',
      'route': LivrePollutionPage(),
    },
    {
      'title': 'Agriculture Biologique',
      'author': 'Sophie Dubois',
      'image': 'assets/images/logo.jpg',
      'route': LivrePollutionPage(),
    },
  ];

  List<Map<String, dynamic>> livresFiltres = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    livresFiltres = livres;
  }

  void _filterBooks(String query) {
    final filteredBooks = livres.where((livre) {
      final titleLower = livre['title'].toLowerCase();
      final searchLower = query.toLowerCase();
      return titleLower.contains(searchLower);
    }).toList();

    setState(() {
      livresFiltres = filteredBooks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bibliothèque',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade900,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Explorez nos livres sur l\'environnement',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Rechercher un livre...',
                  prefixIcon: Icon(Icons.search, color: Colors.teal.shade900),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onChanged: _filterBooks,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: livresFiltres.isNotEmpty
                    ? GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 0.7,
                        ),
                        itemCount: livresFiltres.length,
                        itemBuilder: (context, index) {
                          return _buildBookCard(livresFiltres[index]);
                        },
                      )
                    : Center(
                        child: Text(
                          'Aucun livre trouvé',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookCard(Map<String, dynamic> livre) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => livre['route']), // Navigation vers la page de détails
        );
      },
      child: Hero(
        tag: livre['title'],
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 8,
          shadowColor: Colors.teal.withOpacity(0.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  child: Image.asset(
                    livre['image'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    color: Colors.black.withOpacity(0.05),
                    colorBlendMode: BlendMode.darken,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      livre['title'],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      livre['author'],
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
