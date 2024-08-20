import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black, // Cor de fundo dos botões
            foregroundColor:
                Colors.green[600], // Cor do texto e ícones dos botões
            minimumSize: Size(120, 40),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Test Buttons')),
        body: ActionButtons(
          onCurtirPressed: () {},
          onCompartilharPressed: () {},
        ),
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  final VoidCallback onCurtirPressed;
  final VoidCallback onCompartilharPressed;

  ActionButtons({
    required this.onCurtirPressed,
    required this.onCompartilharPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 16.0),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: onCurtirPressed,
                child: Row(
                  children: [
                    Icon(Icons.thumb_up), // Ícone usando o estilo do tema
                    SizedBox(width: 8.0),
                    Text('Curtir'),
                  ],
                ),
              ),
              SizedBox(width: 16.0),
              ElevatedButton(
                onPressed: onCompartilharPressed,
                child: Row(
                  children: [
                    Icon(Icons.share), // Ícone usando o estilo do tema
                    SizedBox(width: 8.0),
                    Text('Compartilhar'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
