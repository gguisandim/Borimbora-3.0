import 'package:flutter/material.dart';
import '../pages/paginaseventos/umanoitenomuseu.dart';
import '../pages/paginaseventos/domingogratuidade.dart';

class EventosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null, // Remove o título
      ),
      body: Center(
        child: LetterboxdStyleColumn(),
      ),
    );
  }
}

class LetterboxdStyleColumn extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'title': 'Uma noite no museu',
      'imageUrl': 'lib/assets/umanoite.jpg',
    },
    {
      'title': 'Domingo da gratuidade',
      'imageUrl': 'lib/assets/domingo.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UmaNoiteNoMuseuPage(),
                  ),
                );
              } else if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DomingoGratuidadePage(),
                  ),
                );
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  items[index]['title']!,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8.0),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      items[index]['imageUrl']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 180.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
