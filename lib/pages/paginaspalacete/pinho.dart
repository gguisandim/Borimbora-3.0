import 'package:flutter/material.dart';
import 'buttons.dart'; // Certifique-se de que o arquivo 'buttons.dart' está presente e contém a classe ActionButtons

class PinhoPage extends StatefulWidget {
  @override
  _PinhoPageState createState() => _PinhoPageState();
}

class _PinhoPageState extends State<PinhoPage> {
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
        title: Text("Palacete Pinho"),
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
                  'lib/assets/pinho.png', // Certifique-se de que a imagem está no caminho correto
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
                        'Não há informações.',
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
                        'Não há horário de visitação',
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
                        'Local: Rua Dr. Assis, 586 - Cidade Velha Belém - PA',
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
                      'José Pinho, o nome por trás do Palacete Pinho, foi uma figura de destaque no cenário econômico e político de Belém no início do século XX. Nascido em 1860, Pinho era um proeminente comerciante e político, cuja fortuna foi acumulada principalmente através do comércio de borracha e café. Ele era conhecido por seu envolvimento em diversas atividades empresariais e por sua participação ativa na vida política da cidade.\n\n'
                      'A construção do Palacete Pinho iniciou-se em 1904 e foi concluída em 1910, representando o auge da riqueza e do prestígio de José Pinho. O edifício foi projetado para ser uma expressão de seu sucesso e status, e sua arquitetura mistura elementos neoclássicos e art nouveau, refletindo as tendências estilísticas da época. A fachada ornamentada e o interior luxuoso do palacete são testemunhos da opulência e do bom gosto de Pinho.\n\n'
                      'José Pinho foi também um importante patrono das artes e da cultura em Belém. Ele investiu significativamente em instituições culturais e educacionais, promovendo o desenvolvimento social e cultural da cidade. Sua influência se estendeu além dos limites de suas atividades empresariais, contribuindo para o crescimento e a modernização de Belém.\n\n'
                      'O impacto econômico de Pinho foi significativo, não apenas pela sua riqueza pessoal, mas também pela sua capacidade de promover e apoiar o desenvolvimento de infraestruturas e empreendimentos na cidade. Seu envolvimento em projetos de desenvolvimento ajudou a transformar Belém em um centro comercial e cultural dinâmico.\n\n'
                      'José Pinho faleceu em 1925, mas o Palacete Pinho continua a ser um marco importante na cidade. O edifício é um testemunho da riqueza e da influência de Pinho e serve como um importante ponto de referência na história de Belém. Sua contribuição para a cidade, tanto econômica quanto culturalmente, é lembrada e celebrada através de sua imponente residência.\n\n'
                      'O prédio vai abrigar o Núcleo de Artes, Cultura e Educação (Nace), que vai desenvolver o trabalho de integração da política de formação artística em sala de aula. O orçamento para a restauração está em fase de elaboração. A proposta é que sejam desenvolvidas aulas de cantos e pequenos corais, cursos preparatórios com ensaios semanais.',
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
