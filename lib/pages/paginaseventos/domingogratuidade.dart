import 'package:flutter/material.dart';
import 'buttons.dart';

class DomingoGratuidadePage extends StatefulWidget {
  @override
  _DomingoGratuidadePageState createState() => _DomingoGratuidadePageState();
}

class _DomingoGratuidadePageState extends State<DomingoGratuidadePage> {
  bool showDetails = false;

  void toggleDetails() {
    setState(() {
      showDetails = !showDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Domingo da Gratuidade'),
        centerTitle: true,
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
                  'lib/assets/domingo.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity, // Ocupa a largura total
                  height: 200.0, // Altura fixa para a imagem
                ),
              ),
              SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 4.0,
                    child: ListTile(
                      leading: Icon(Icons.attach_money, size: 20.0),
                      title: Text(
                        'Preço da entrada: Gratuita',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Card(
                    elevation: 4.0,
                    child: ListTile(
                      leading: Icon(Icons.access_time, size: 20.0),
                      title: Text(
                        'Horário de visita: o horário da disponibilidade dos museus',
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
                        'Local: Museu de Arte Sacra; Museu do Forte do Presépio; Espaço Cultural Casa das Onze Janelas; Museu do Círio; galeria do Museu do Estado do Pará; Museu de Gemas do Pará, no Espaço São José Liberto; Museu da Imagem e do Som, no Centro Cultural Palacete Faciola; Memorial Amazônico da Navegação, no Mangal das Garças; Parque Cemitério Soledade e Museu do Marajó, no município de Cachoeira do Arari.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              if (showDetails)
                Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Detalhes do Evento: O Governo do Pará, por meio da Secretaria de Estado de Cultura (Secult), promove o “Domingo da Gratuidade". A iniciativa permite entrada gratuita em todo o Sistema Integrado de Museus e Memoriais (SIMM), sempre no primeiro domingo de cada mês. A ação ocorre desde fevereiro de 2020, por meio da Portaria nº 51, e faz parte de uma política de ampliação de acesso aos espaços museais.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: toggleDetails,
                child: Text(showDetails ? 'Esconder Detalhes' : 'Ver Detalhes'),
              ),
              SizedBox(height: 16.0),
              ActionButtons(
                onCurtirPressed: () {
                  // Adicione a ação desejada para curtir
                },
                onCompartilharPressed: () {
                  // Adicione a ação desejada para compartilhar
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
