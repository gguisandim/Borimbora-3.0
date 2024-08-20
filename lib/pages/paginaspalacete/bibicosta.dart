import 'package:flutter/material.dart';
import 'buttons.dart';

class BibiCostaPage extends StatefulWidget {
  @override
  _BibiCostaPageState createState() => _BibiCostaPageState();
}

class _BibiCostaPageState extends State<BibiCostaPage> {
  bool showHistory = false;
  bool showVirtualTour = false;

  void toggleHistory() {
    setState(() {
      showHistory = !showHistory;
      showVirtualTour = false;
    });
  }

  void toggleVirtualTour() {
    setState(() {
      showVirtualTour = !showVirtualTour;
      showHistory = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Palacete Bibi Costa'),
        centerTitle: true,
        // Remover o IconButton para favoritos
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'lib/assets/bibicosta.png',
                  fit: BoxFit.cover,
                  width: double.infinity, // Ocupa a largura total
                  height: 200.0, // Altura fixa para a imagem
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                elevation: 4.0,
                child: ListTile(
                  leading: Icon(Icons.attach_money, size: 20.0),
                  title: Text('Preço da entrada: Não há informações.',
                      style: TextStyle(fontSize: 16.0)),
                ),
              ),
              SizedBox(height: 8.0),
              Card(
                elevation: 4.0,
                child: ListTile(
                  leading: Icon(Icons.access_time, size: 20.0),
                  title: Text(
                    'Horário de visita: o local não se encontra aberto para visitação.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Card(
                elevation: 4.0,
                child: ListTile(
                  leading: Icon(Icons.location_on, size: 20.0),
                  title: Text(
                    'Local: Av.Gov.José Malcher, 1044 - Nazaré, Belém - PA',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ActionButtons(
                // Remover parâmetros relacionados a favoritos
                onCurtirPressed: () {
                  // Adicione a ação desejada para curtir
                },
                onCompartilharPressed: () {
                  // Adicione a ação desejada para compartilhar
                },
              ),
              SizedBox(height: 16.0),
              if (showHistory)
                Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'O palacete foi iniciado em 1913 e concluído em 1917. A construção do edifício foi uma expressão do status e do sucesso de Bibi Costa na sociedade paraense. O palacete é um exemplo notável da arquitetura eclética, misturando elementos do neoclássico e do revivalismo, com uma fachada imponente e detalhamentos ornamentais sofisticados. A decoração interna do palacete reflete o bom gosto e o estilo de vida luxuoso de Costa, com acabamentos refinados e móveis de época. Além de sua importância como residência, o Palacete Bibi Costa também foi um ponto de encontro para eventos sociais e culturais, refletindo o papel de Costa como uma figura central na vida social de Belém. Sua influência foi sentida tanto nos negócios quanto na vida cultural da cidade.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              if (showVirtualTour)
                Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Clique aqui para iniciar o passeio virtual: [Link para o passeio virtual]',
                      style: TextStyle(fontSize: 16.0, color: Colors.blue),
                    ),
                  ),
                ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: toggleHistory,
                child: Text(showHistory ? 'Esconder História' : 'Ver História'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: toggleVirtualTour,
                child: Text(showVirtualTour
                    ? 'Esconder Passeio Virtual'
                    : 'Ver Passeio Virtual'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
