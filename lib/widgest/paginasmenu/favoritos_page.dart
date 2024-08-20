import 'package:flutter/material.dart';

class FavoritosPage extends StatefulWidget {
  @override
  _FavoritosPageState createState() => _FavoritosPageState();
}

class _FavoritosPageState extends State<FavoritosPage> {
  final List<Map<String, String>> _palacetes = [
    {'title': 'Antônio Lemos', 'imageUrl': 'lib/assets/antoniolemos.png'},
    {'title': 'Lauro Sodré', 'imageUrl': 'lib/assets/laurosodre.png'},
    {'title': 'Episcopal', 'imageUrl': 'lib/assets/episcopal.png'},
    {'title': 'Governadores', 'imageUrl': 'lib/assets/governadores.png'},
    {'title': 'Bolonha', 'imageUrl': 'lib/assets/bolonha.png'},
    {'title': 'Faciola', 'imageUrl': 'lib/assets/faciola.png'},
    {'title': 'Pinho', 'imageUrl': 'lib/assets/pinho.png'},
    {'title': 'Augusto Montenegro', 'imageUrl': 'lib/assets/augustomont.png'},
    {'title': 'Chermont', 'imageUrl': 'lib/assets/chermont.png'},
    {'title': 'Guilherme Paiva', 'imageUrl': 'lib/assets/guilhermepaiva.png'},
    {'title': 'Bibi Costa', 'imageUrl': 'lib/assets/bibicosta.png'},
    {'title': 'Pedro Gusmão', 'imageUrl': 'lib/assets/pedrogusmao.png'},
    {'title': 'Lourenço da Motta', 'imageUrl': 'lib/assets/lourenco.png'},
    {'title': 'Mac Dowell', 'imageUrl': 'lib/assets/macdowell.png'},
    {'title': 'Passarinho', 'imageUrl': 'lib/assets/passarinho.png'},
  ];

  final Set<String> _favorites = {};

  void _toggleFavorite(String title) {
    setState(() {
      if (_favorites.contains(title)) {
        _favorites.remove(title);
      } else {
        _favorites.add(title);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bora?'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FavoritesDetailPage(favorites: _favorites.toList()),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Selecione os locais que você já visitou',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          ..._palacetes.map((item) {
            final isFavorite = _favorites.contains(item['title']);
            return ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              leading: Image.asset(
                item['imageUrl']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(item['title']!),
              trailing: IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : null,
                ),
                onPressed: () => _toggleFavorite(item['title']!),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

class FavoritesDetailPage extends StatelessWidget {
  final List<String> favorites;

  FavoritesDetailPage({required this.favorites});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            title: Text(favorites[index]),
          );
        },
      ),
    );
  }
}
