import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Borimbora',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green[800],
        colorScheme: ColorScheme.dark(
          primary: Colors.green[800]!,
          secondary: Colors.orange[600]!,
        ),
        scaffoldBackgroundColor:
            Colors.grey[900], // Alterado para um cinza escuro
        appBarTheme: AppBarTheme(
          color: Colors.green[900],
          elevation: 4.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          toolbarHeight: 40, // Ajuste a altura da AppBar conforme necessário
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.green[500], // Alterado para um verde mais claro
          textTheme: ButtonTextTheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black, // Cor de fundo dos botões
            foregroundColor:
                Colors.green[600], // Cor do texto e ícones dos botões
            minimumSize: Size(120, 40),
          ),
        ),
        cardTheme: CardTheme(
          color: Colors.grey[800],
          elevation: 4.0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[700],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Colors.grey[600]!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Colors.green[600]!),
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
