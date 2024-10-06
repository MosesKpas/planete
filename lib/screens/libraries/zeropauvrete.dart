import 'package:flutter/material.dart';

class ZeroPauvretePage extends StatelessWidget {
  const ZeroPauvretePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/zeropau.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              'Zéro Pauvreté',
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
                  _buildQuoteSection(),
                  const SizedBox(height: 20),
                  _buildSectionTitle('La pauvreté'),
                  _buildSectionContent(
                    'La pauvreté montre l’énorme fossé qui distingue les populations. '
                    'Étant un objectif du développement durable, la lutte contre la pauvreté est une nécessité '
                    'pour rendre ce monde meilleur et vivable. La Banque Mondiale évalue le seuil de pauvreté à 2,15\$ par jour. '
                    'La pauvreté rend les individus vulnérables et sans défense.',
                  ),
                  _buildSectionTitle('Comment lutter ?'),
                  _buildSectionContent(
                    '1. Créer des emplois non agricoles décents pour les pauvres et encourager l’entrepreneuriat.\n'
                    '2. Promouvoir l’utilisation et la gestion durable des ressources naturelles.\n'
                    '3. Aider les pays à mettre en œuvre un ensemble complet de politiques et de stratégies permettant de lutter contre la pauvreté.\n'
                    'Plusieurs autres stratégies peuvent être adoptées.',
                  ),
                  _buildSectionTitle('Statistiques'),
                  _buildSectionContent(
                    '- Plus de 60 % des pauvres vivent en Afrique subsaharienne.\n'
                    '- Les 10 hommes les plus riches du monde détiennent plus que les 3,1 milliards de pauvres réunis.\n'
                    '- Près de 200 000 personnes meurent à cause de la pauvreté.',
                  ),
                  const SizedBox(height: 20),
                  _buildSectionTitle('À vous d’agir !'),
                  _buildSectionContent(
                    'Réfléchissez à votre rôle et à votre impact dans la lutte contre la pauvreté. '
                    'Quelles actions pouvez-vous entreprendre pour contribuer à cet objectif ?',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuoteSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        '« Tant que la pauvreté, l’injustice et les inégalités flagrantes persisteront dans notre monde, aucun de nous ne pourra se reposer. » - Nelson Mandela',
        style: const TextStyle(
          fontSize: 18,
          fontStyle: FontStyle.italic,
          color: Colors.black54,
        ),
        textAlign: TextAlign.center,
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
          color: Colors.green,
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
