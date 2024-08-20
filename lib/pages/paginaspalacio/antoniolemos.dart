import 'package:flutter/material.dart';
import 'buttons.dart';

class AntonioLemosPage extends StatefulWidget {
  @override
  _AntonioLemosPageState createState() => _AntonioLemosPageState();
}

class _AntonioLemosPageState extends State<AntonioLemosPage> {
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
        centerTitle: true,
        title: Text('Palacete Antônio Lemos'),
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
                  'lib/assets/antoniolemos.png', // Certifique-se de que a imagem está no caminho correto
                  fit: BoxFit.cover,
                  width: double.infinity, // Imagem ocupa toda a largura
                  height: 200.0,
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
                        'Horário de visita: Em dias de semana, das 8h30 às 14h, aos domingos das 09h às 13h',
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
                        'Local: Praça Dom Pedro II, 2 - Cidade Velha, Belém - PA',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                ],
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
                      'Antônio Lemos, o nome por trás do Palacete Antônio Lemos, foi uma figura central na história econômica e política de Belém, durante o final do século XIX e início do século XX. Nascido em 1851, Lemos era um dos grandes empresários e políticos da época, cuja influência se estendia além dos limites da cidade. Ele era conhecido principalmente por seu papel como prefeito de Belém, cargo que ocupou em duas ocasiões: entre 1890 e 1891 e novamente de 1892 a 1896. Lemos se destacou como um importante representante da elite econômica local, tendo feito fortuna através do ciclo da borracha. Ele também se envolveu em vários empreendimentos, no qual acumulou uma grande fortuna, pois era um astuto empresário e político, com uma visão clara para o desenvolvimento da cidade. O ciclo da borracha, que começou no final do século XIX, trouxe uma onda de riqueza para a Amazônia, transformando a economia da região e colocando Belém no mapa internacional como um centro econômico de importância. O Palacete Antônio Lemos, construído entre 1880 e 1883, foi um reflexo do seu sucesso. Projetado por um arquiteto europeu, o edifício exibia um estilo neoclássico com influências das tradições arquitetônicas europeias que Lemos admirava. A construção do palacete não foi apenas um ato de ostentação pessoal, mas também uma demonstração da importância econômica e política de Lemos na região. O edifício, com suas colunas imponentes e detalhes ornamentais, representava o auge de sua influência e a prosperidade de Belém durante o ciclo da borracha. Além de seu papel como prefeito, Antônio Lemos também foi um importante patrono das artes e da cultura em Belém. Sua riqueza e posição lhe permitiram apoiar diversas iniciativas culturais e sociais, deixando um legado duradouro na cidade. Ele também foi um dos primeiros a reconhecer a importância de investir em infraestrutura para a modernização da cidade, o que ajudou a impulsionar o desenvolvimento urbano de Belém. Antônio Lemos morreu em 1912, mas seu legado perdura através das edificações e das contribuições que fez para o crescimento e a modernização de Belém. O Palacete Antônio Lemos continua a ser um símbolo da riqueza e da influência que ele exerceu durante sua vida, e o edifício permanece como um importante marco histórico na cidade.',
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
