import 'package:flutter/material.dart';
import 'buttons.dart';

class BolonhaPage1 extends StatefulWidget {
  @override
  _BolonhaPage1State createState() => _BolonhaPage1State();
}

class _BolonhaPage1State extends State<BolonhaPage1> {
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
        title: Text('Palacete Bolonha'),
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
                  'lib/assets/bolonha.png',
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
                  title: Text('Preço da entrada: Entrada Gratuita.',
                      style: TextStyle(fontSize: 16.0)),
                ),
              ),
              SizedBox(height: 8.0),
              Card(
                elevation: 4.0,
                child: ListTile(
                  leading: Icon(Icons.access_time, size: 20.0),
                  title: Text(
                    'Horário de visita: De terça-feira à sexta-feira, das 09h30 às 13h e das 14h30 às 15h30.',
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
                    'Local: Av.Gov.José Malcher, 295 - Nazaré, Belém - PA',
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
                      'Eugênio Bolonha, o nome associado ao Palacete Bolonha, foi um influente comerciante e investidor em Belém, Pará, no início do século XX. Nascido em 1865, Bolonha construiu sua fortuna principalmente através de seus investimentos em café e borracha, dois setores que impulsionaram a economia da região durante o ciclo da borracha. A construção do Palacete Bolonha começou em 1911 e foi concluída em 1914. O edifício foi projetado para ser um símbolo da riqueza e do prestígio de Bolonha, refletindo o auge de sua influência econômica. A arquitetura eclética do palacete combina elementos neoclássicos e revivalistas, com uma fachada ornamentada e um interior decorado com acabamentos sofisticados. O design do palacete é uma clara demonstração do desejo de Bolonha de se destacar entre os grandes empresários da época. Bolonha também teve um papel ativo na comunidade de Belém, investindo em várias iniciativas culturais e sociais. Ele foi um patrono das artes e apoiou o desenvolvimento de instituições educacionais e culturais na cidade. Seu envolvimento em projetos comunitários ajudou a promover o crescimento e a modernização de Belém. O impacto econômico de Bolonha foi profundo, não apenas por meio de sua própria riqueza, mas também por sua capacidade de influenciar e apoiar o desenvolvimento econômico da região. Seus investimentos ajudaram a transformar Belém em um centro econômico e cultural de importância regional. Eugênio Bolonha faleceu em 1930, mas o Palacete Bolonha permanece como um importante símbolo de sua influência e sucesso. O edifício continua a ser um marco histórico na cidade, representando a prosperidade e o prestígio da época do ciclo da borracha. No interior, o palacete apresenta uma rica decoração, incluindo um banheiro principal com ferragens inglesas e uma sala de banho que já foi uma capela dedicada à Nossa Senhora de Nazaré. O segundo andar conta também com uma sala de costura e outros espaços luxuosos. Para visitar o palacete, deve-se agendar a visita pelo telefone: (91) 98417-5894.',
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
