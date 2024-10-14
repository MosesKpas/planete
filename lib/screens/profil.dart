import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  // Contrôleurs pour les champs de texte
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  bool _isEditingUsername = false;
  bool _isEditingEmail = false;

  @override
  void initState() {
    super.initState();
    _loadProfile(); // Charger les données sauvegardées au démarrage
  }

  Future<void> _loadProfile() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _usernameController.text = prefs.getString('username') ?? 'User';
      _emailController.text = prefs.getString('email') ?? 'mailUser@gmail.com';
    });
  }

  Future<void> _saveProfile() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', _usernameController.text);
    await prefs.setString('email', _emailController.text);

    // Afficher un message de succès
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Profil sauvegardé : ${_usernameController.text}, ${_emailController.text}')),
    );

    // Quitter le mode édition
    setState(() {
      _isEditingUsername = false;
      _isEditingEmail = false;
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Nom de l'utilisateur
              _buildEditableField(
                controller: _usernameController,
                label: 'Nom d\'utilisateur',
                isEditing: _isEditingUsername,
                onEdit: () {
                  setState(() {
                    _isEditingUsername = true;
                  });
                },
              ),
              const SizedBox(height: 20),

              // Email de l'utilisateur
              _buildEditableField(
                controller: _emailController,
                label: 'Email',
                isEditing: _isEditingEmail,
                onEdit: () {
                  setState(() {
                    _isEditingEmail = true;
                  });
                },
              ),
              const SizedBox(height: 30),

              // Bouton de sauvegarde du profil
              Center(
                child: ElevatedButton(
                  onPressed: _saveProfile,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Couleur du bouton de sauvegarde
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Sauvegarder le Profil',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
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

  // Widget pour les champs éditables avec icône de crayon
  Widget _buildEditableField({
    required TextEditingController controller,
    required String label,
    required bool isEditing,
    required VoidCallback onEdit,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Champ de texte
        Expanded(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: label,
              border: OutlineInputBorder(),
              enabled: isEditing,
            ),
            readOnly: !isEditing,
          ),
        ),
        const SizedBox(width: 10),

        // Icône de stylot
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: onEdit,
        ),
      ],
    );
  }
}
