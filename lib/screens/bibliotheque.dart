import 'package:flutter/material.dart';
import 'package:planete/screens/libraries/accessibiliteauxsoinsdesante.dart';
import 'package:planete/screens/libraries/agriculture.dart';
import 'package:planete/screens/libraries/bassinducongo.dart';
import 'package:planete/screens/libraries/biodiversite.dart';
import 'package:planete/screens/libraries/constructionecologiqueetvilledurable.dart';
import 'package:planete/screens/libraries/crisedeleau.dart';
import 'package:planete/screens/libraries/dechetdequipementelectronique.dart';
import 'package:planete/screens/libraries/dechetstextiles.dart';
import 'package:planete/screens/libraries/deforestation.dart';
import 'package:planete/screens/libraries/developpementdurable.dart';
import 'package:planete/screens/libraries/economiebleue.dart';
import 'package:planete/screens/libraries/economiecirculaire.dart';
import 'package:planete/screens/libraries/economieverte.dart';
import 'package:planete/screens/libraries/educationpourtous.dart';
import 'package:planete/screens/libraries/egalitedesexe.dart';
import 'package:planete/screens/libraries/empreintecarbone.dart';
import 'package:planete/screens/libraries/empreinteecologiaue.dart';
import 'package:planete/screens/libraries/energieeolienne.dart';
import 'package:planete/screens/libraries/energienonrenouvelable.dart';
import 'package:planete/screens/libraries/energierenouvelable.dart';
import 'package:planete/screens/libraries/energiesolaire.dart';
import 'package:planete/screens/libraries/gazaeffetdeserre.dart';
import 'package:planete/screens/libraries/geothermie.dart';
import 'package:planete/screens/libraries/gestiondechets.dart';
import 'package:planete/screens/libraries/hydroelectricite.dart';
import 'package:planete/screens/libraries/jourdedepassement.dart';
import 'package:planete/screens/libraries/livrepollution.dart';
import 'package:planete/screens/libraries/microplastique.dart';
import 'package:planete/screens/libraries/neutralitecarbone.dart';
import 'package:planete/screens/libraries/objectifdudeveloppementdurable.dart';
import 'package:planete/screens/libraries/objectifzerofaim.dart';
import 'package:planete/screens/libraries/pesticides.dart';
import 'package:planete/screens/libraries/peuplesautochotones.dart';
import 'package:planete/screens/libraries/pollutiondelaire.dart';
import 'package:planete/screens/libraries/pollutionplastique.dart';
import 'package:planete/screens/libraries/puitsdecarbone.dart';
import 'package:planete/screens/libraries/ressourcesnaturelles.dart';
import 'package:planete/screens/libraries/terrerares.dart';
import 'package:planete/screens/libraries/transisionenergetique.dart';
import 'package:planete/screens/libraries/zeropauvrete.dart';

class BibliothequePage extends StatefulWidget {
  const BibliothequePage({super.key});

  @override
  State<BibliothequePage> createState() => _BibliothequePageState();
}

class _BibliothequePageState extends State<BibliothequePage> {
  final List<Map<String, dynamic>> livres = [
    {
      'title': 'Changement climatique',
      'author': '',
      'image': 'assets/images/climat.jpg',
      'route': const LivrePollutionPage(),
    },
    {
      'title': 'Pollution plastique',
      'author': '',
      'image': 'assets/images/pollution.jpg',
      'route': const PollutionPlastiquePage(),
    },
    {
      'title': 'Gaz à effet de serre',
      'author': '',
      'image': 'assets/images/gazeffet.jpg',
      'route': const GazaEffetDeSerrePage(),
    },
    {
      'title': 'Déforestation',
      'author': '',
      'image': 'assets/images/deforestation.jpg',
      'route': const DeforestationPage(),
    },
    {
      'title': 'Crise de l\'eau',
      'author': '',
      'image': 'assets/images/crise.jpg',
      'route': const CriseDeLeauPage(),
    },
    {
      'title': 'Biodiversité',
      'author': '',
      'image': 'assets/images/biodiversite.jpg',
      'route': const BiodiversitePage(),
    },
    {
      'title': 'Gestion des déchets',
      'author': '',
      'image': 'assets/images/gesdechets.jpg',
      'route': const GestionDechetsPage(),
    },
    {
      'title': 'Déchets textiles',
      'author': '',
      'image': 'assets/images/dectext.jpg',
      'route': const DechetsTextilesPage(),
    },
    {
      'title': 'Les déchets d\'équipement électronique',
      'author': '',
      'image': 'assets/images/decelectro.jpg',
      'route': const DechetsEquipementElectroniquePage(),
    },
    {
      'title': 'Micro plastique',
      'author': '',
      'image': 'assets/images/micoplast.jpg',
      'route': const MicroPlastiquesPage(),
    },
    {
      'title': 'Pollution de l\'air',
      'author': '',
      'image': 'assets/images/poluaire.jpg',
      'route': const PollutionDeLAirPage(),
    },
    {
      'title': 'Développement durable',
      'author': '',
      'image': 'assets/images/devdurable.jpg',
      'route': const DeveloppementDurablePage(),
    },
    {
      'title': 'Objectif du développement durable',
      'author': '',
      'image': 'assets/images/objecdurable.jpg',
      'route': const ObjectifDeveloppementDurablePage(),
    },
    {
      'title': 'Zéro pauvreté',
      'author': '',
      'image': 'assets/images/zeropau.jpg',
      'route': const ZeroPauvretePage(),
    },
    {
      'title': 'Objectif zéro faim',
      'author': '',
      'image': 'assets/images/objetzerofaim.jpg',
      'route': const ObjectifZeroFaimPage(),
    },
    {
      'title': 'Accessibilité aux soins de santé ',
      'author': '',
      'image': 'assets/images/soinsante.jpg',
      'route': const AccessibiliteAuxSoinsDeSantePage(),
    },
    {
      'title': 'Education pour tous',
      'author': '',
      'image': 'assets/images/education.jpg',
      'route': const EducationPourTousPage(),
    },
    {
      'title': 'Égalité de sex',
      'author': '',
      'image': 'assets/images/egalsexe.jpg',
      'route': const EgaliteDesSexesPage(),
    },
    {
      'title': 'Construction écologique et ville durable ',
      'author': '',
      'image': 'assets/images/constdurable.jpg',
      'route': const ConstructionEcologiqueEtVilleDurablePage(),
    },
    {
      'title': 'la transition énergétique',
      'author': '',
      'image': 'assets/images/transenergie.jpg',
      'route': const TransitionEnergetiquePage(),
    },
    {
      'title': 'Energie non renouvelable',
      'author': '',
      'image': 'assets/images/energnonrenou.jpg',
      'route': const EnergieNonRenouvelablePage(),
    },
    {
      'title': 'Energie renouvelable',
      'author': '',
      'image': 'assets/images/energrenouv.jpg',
      'route': const EnergieRenouvelablePage(),
    },
    {
      'title': 'l’hydroélectricité',
      'author': '',
      'image': 'assets/images/hydro.jpg',
      'route': const HydroElectricitePage(),
    },
    {
      'title': 'Energie solaire',
      'author': '',
      'image': 'assets/images/energesolaire.jpg',
      'route': const EnergieSolairePage(),
    },
    {
      'title': 'Energie éolienne',
      'author': '',
      'image': 'assets/images/energelolienne.jpg',
      'route': const EnergieEoliennePage(),
    },
    {
      'title': 'la géothermie',
      'author': '',
      'image': 'assets/images/geothermie.jpg',
      'route': const GeothermiePage(),
    },
    {
      'title': 'Terres rares',
      'author': '',
      'image': 'assets/images/terrerare.jpg',
      'route': const TerresRaresPage(),
    },
    {
      'title': 'Economie verte',
      'author': '',
      'image': 'assets/images/econoverte.jpg',
      'route': const EconomieVertePage(),
    },
    {
      'title': 'Economie circulaire',
      'author': '',
      'image': 'assets/images/econocircu.jpg',
      'route': const EconomieCirculairePage(),
    },
    {
      'title': 'Economie bleue',
      'author': '',
      'image': 'assets/images/econoblue.jpg',
      'route': const EconomieBleuePage(),
    },
    {
      'title': 'Ressources naturelles',
      'author': '',
      'image': 'assets/images/ressnatu.jpg',
      'route': const RessourcesNaturellesPage(),
    },
    {
      'title': 'le jour du dépassement',
      'author': '',
      'image': 'assets/images/jourdepasse.jpg',
      'route': const JourDuDepassementPage(),
    },
    {
      'title': 'Neutralité carbone',
      'author': '',
      'image': 'assets/images/neutrecarbone.jpg',
      'route': const NeutraliteCarbonePage(),
    },
    {
      'title': 'Empreinte carbone',
      'author': '',
      'image': 'assets/images/emprcarbone.jpg',
      'route': const EmpreinteCarbonePage(),
    },
    {
      'title': 'Empreinte écologique',
      'author': '',
      'image': 'assets/images/emprecolo.jpg',
      'route': const EmpreinteEcologiquePage(),
    },
    {
      'title': 'l\'Agriculture',
      'author': '',
      'image': 'assets/images/agriculture.jpg',
      'route': const AgriculturePage(),
    },
    {
      'title': 'Les pesticides',
      'author': '',
      'image': 'assets/images/pesticides.jpg',
      'route': const PesticidesPage(),
    },
    {
      'title': 'Peuples autochtones',
      'author': '',
      'image': 'assets/images/peuplauto.jpg',
      'route': const PeuplesAutochtonesPage(),
    },
    {
      'title': 'Puits de carbone',
      'author': '',
      'image': 'assets/images/puitcarbone.jpg',
      'route': const PuitsDeCarbonePage(),
    },
    {
      'title': 'le bassin du Congo',
      'author': '',
      'image': 'assets/images/bassincongo.jpg',
      'route': const BassinDuCongoPage(),
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
              const Text(
                'Explorez nos sujets sur l\'environnement',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Rechercher un sujet...',
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
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
                    : const Center(
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
          MaterialPageRoute(builder: (context) => livre['route']),
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
