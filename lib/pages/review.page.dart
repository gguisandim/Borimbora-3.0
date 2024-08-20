import 'package:flutter/material.dart';
import '../pages/paginaspalacete/faciola.dart';
import '../pages/paginaspalacete/pinho.dart';
import '../pages/paginaspalacete/augustomontenegro.dart';
import '../pages/paginaspalacete/chermont.dart';
import '../pages/paginaspalacete/guilhermepaiva.dart';
import '../pages/paginaspalacete/bibicosta.dart';
import '../pages/paginaspalacete/pedrogusmao.dart';
import '../pages/paginaspalacete/lourenco.dart';
import '../pages/paginaspalacete/macdowell.dart';
import '../pages/paginaspalacete/passarinho.dart';
import '../pages/paginaspalacete/bolonha1.dart';

class PalacetePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Mantém o título centralizado, se houver
        // title: Text('Palacetes'), // Removido o título
      ),
      body: Center(
        child: LetterboxdStyleColumn(),
      ),
    );
  }
}

class LetterboxdStyleColumn extends StatelessWidget {
  final List<Map<String, String>> items = [
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
    {'title': 'Bolonha', 'imageUrl': 'lib/assets/bolonha.png'}
  ];

  void _navigateToPage(BuildContext context, int index) {
    Widget page;
    switch (index) {
      case 0:
        page = FaciolaPage();
        break;
      case 1:
        page = PinhoPage();
        break;
      case 2:
        page = AugustoMontenegroPage();
        break;
      case 3:
        page = ChermontPage();
        break;
      case 4:
        page = GuilhermePaivaPage();
        break;
      case 5:
        page = BibiCostaPage();
        break;
      case 6:
        page = PedroGusmaoPage();
        break;
      case 7:
        page = LourencoDaMottaPage();
        break;
      case 8:
        page = MacDowellPage();
        break;
      case 9:
        page = PassarinhoPage();
        break;
      case 10:
        page = BolonhaPage1();
        break;
      default:
        page = Placeholder(); // Página padrão
        break;
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => _navigateToPage(context, index),
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
                SizedBox(height: 16.0),
              ],
            ),
          ),
        );
      },
    );
  }
}
