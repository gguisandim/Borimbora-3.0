import 'package:flutter/material.dart';
import 'buttons.dart'; // Certifique-se de que o arquivo 'buttons.dart' está presente e contém a classe ActionButtons

class LauroSodrePage extends StatefulWidget {
  @override
  _LauroSodrePageState createState() => _LauroSodrePageState();
}

class _LauroSodrePageState extends State<LauroSodrePage> {
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
        title: Text('Palácio Lauro Sodré'),
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
                  'lib/assets/laurosodre.png', // Certifique-se de que a imagem está no caminho correto
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
                        'Horário de visita: De terça-feira aos domingos, das 09h às 17h.',
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
                        'Local: Praça Dom Pedro II, s/n - Cidade Velha, Belém - PA',
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
                      'O Palácio Lauro Sodré é um dos edifícios mais significativos em Belém, servindo como sede do governo do Estado do Pará. O palácio é uma construção de importância histórica e arquitetônica, refletindo o poder e a administração local durante o início do século XX.\n\n'
                      'Construído entre 1923 e 1925, o Palácio Lauro Sodré foi projetado para ser uma representação imponente da autoridade governamental e do desenvolvimento da cidade. A arquitetura do edifício é um exemplo do estilo eclético, com influências neoclássicas e elementos revivalistas que conferem uma aparência grandiosa e formal.\n\n'
                      'O palácio desempenhou um papel crucial na administração do Estado do Pará, sendo o centro de decisões políticas e administrativas importantes. Durante o ciclo da borracha, o edifício também simbolizava a prosperidade e o progresso econômico da região, refletindo o crescimento e a modernização de Belém.\n\n'
                      'O nome do palácio homenageia Lauro Sodré, um importante político e governador do Estado do Pará, cuja contribuição para a administração e o desenvolvimento da região foi significativa. O edifício continua a ser um símbolo da autoridade e da história política de Belém.\n\n'
                      'O Palácio, originalmente construído no século XVIII em estilo neoclássico pelo arquiteto Antonio Landi, é um marco colonial que serviu como sede e residência dos governadores e capitães generais do Pará. No início do século XX, foi renovado durante a gestão do governador Augusto Montenegro, incorporando elementos da arquitetura fin-de-siècle, preservando traços do rococó e do neoclássico, e adicionando características do art noveau, refletindo seu estilo eclético.\n\n'
                      'Desde sua transformação em museu, o MEP faz parte do Sistema Integrado de Museus e Memoriais (SIMM), desempenhando um papel central na preservação e exposição de acervos que incluem pinturas, fotografias e outros artefatos históricos que testemunham diversos períodos da história do Pará. O museu conta com exposições de longa duração nos salões do pavimento superior e térreo, além das galerias dedicadas a exposições temporárias de média e curta duração.',
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
