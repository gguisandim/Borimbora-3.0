import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgest/search_app_bar.dart';
import '../pages/films_page.dart';
import '../pages/review.page.dart';
import '../pages/eventos_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Borimbora'), // Texto centralizado por padrão
        centerTitle: true, // Garante que o título estará centralizado
      ),
      drawer: CustomDrawer(),
      body: IndexedStack(
        index: _selectedIndex,
        children: <Widget>[
          PalacioPage(),
          PalacetePage(),
          EventosPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabSelected,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.crown), // Ícone de castelo
            label: 'Palácio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Palacete',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Eventos',
          ),
        ],
      ),
    );
  }
}
