import 'package:flutter/material.dart';
import 'buttons.dart';

class AugustoMontenegroPage extends StatefulWidget {
  @override
  _AugustoMontenegroPageState createState() => _AugustoMontenegroPageState();
}

class _AugustoMontenegroPageState extends State<AugustoMontenegroPage> {
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
        title: Text('Palacete Augusto Montenegro'),
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
                  'lib/assets/augustomont.png',
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
                    'Horário de visita: De segunda-feira à sexta-feira, das 09h às 14h',
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
                    'Local: Av.Gov. José Malcher, 1192- Nazaré, Belém - PA',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
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
              SizedBox(height: 16.0),
              if (showHistory)
                Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Augusto Montenegro, nascido em 1850, foi um destacado político e empresário de Belém, Pará. Montenegro era conhecido por seu envolvimento em diversos setores da economia, incluindo o comércio e a indústria da borracha. Ele desempenhou um papel importante na política local, servindo como governador do Estado do Pará e contribuindo para o desenvolvimento da região.\n\n'
                      'O Palacete Augusto Montenegro foi construído entre 1900 e 1905 como uma residência que refletisse o status e a importância de Montenegro na sociedade paraense. O edifício é um exemplo notável da arquitetura eclética, com influências neoclássicas e revivalistas. A fachada do palacete é imponente, com colunas e detalhes ornamentais sofisticados, enquanto o interior é decorado com acabamentos luxuosos e móveis de época.\n\n'
                      'Montenegro usou sua riqueza e influência para apoiar diversas causas e iniciativas na cidade, incluindo projetos de infraestrutura e desenvolvimento cultural. O palacete foi não apenas uma residência, mas também um local de recepção para eventos sociais e políticos importantes.\n\n'
                      'Após a morte de Augusto Montenegro em 1910, o palacete passou por diferentes proprietários e usos, mas continua a ser um importante marco histórico em Belém. O edifício é um testemunho da riqueza e da influência de Montenegro e do impacto que ele teve na cidade durante sua vida.',
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
