import 'package:flutter/material.dart';
import 'buttons.dart';

class FaciolaPage extends StatefulWidget {
  @override
  _FaciolaPageState createState() => _FaciolaPageState();
}

class _FaciolaPageState extends State<FaciolaPage> {
  bool showHistory = false;
  bool showVirtualTour = false;

  void toggleHistory() {
    setState(() {
      showHistory = !showHistory;
      showVirtualTour =
          false; // Garante que apenas um conteúdo é exibido de cada vez
    });
  }

  void toggleVirtualTour() {
    setState(() {
      showVirtualTour = !showVirtualTour;
      showHistory =
          false; // Garante que apenas um conteúdo é exibido de cada vez
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Palacete Faciola"),
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
                  'lib/assets/faciola.png', // Verifique se a imagem está no caminho correto
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
                        'Preço da entrada: 5,00',
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
                        'Horário de visita: De terça-feira aos domingos, das 9h às 16h',
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
                        'Local: Av. Sra. de Nazaré, 138 - Nazaré, Belém - PA',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                ],
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
                      'Francisco Faciola, o nome associado ao Palacete Faciola, foi uma figura proeminente na economia e na política de Belém, Pará, durante o início do século XX. Nascido em 1858, Faciola foi um dos principais comerciantes da região, especialmente conhecido pelo seu envolvimento na indústria do café e da borracha, dois pilares econômicos da Amazônia na época. Ele acumulou uma grande fortuna através de seus empreendimentos, tornando-se um dos homens mais ricos e influentes da região.\n\n'
                      'A construção do Palacete Faciola começou em 1906 e foi concluída em 1912, refletindo o auge da prosperidade econômica de Faciola. O palacete foi projetado para ser um símbolo de seu sucesso, e sua construção é um testemunho da riqueza que ele acumulou durante o ciclo da borracha. A arquitetura eclética do edifício, que combina elementos neoclássicos e revivalistas, demonstra a influência das tendências arquitetônicas europeias e a vontade de Faciola de se destacar na sociedade local.\n\n'
                      'Faciola também era conhecido por seu papel em várias instituições e organizações na cidade. Ele foi um ativo patrono das artes e um apoiador de diversas causas sociais, utilizando sua riqueza para promover o desenvolvimento cultural e educacional em Belém. Seu envolvimento em causas comunitárias e seu apoio à modernização da cidade foram parte de seu legado, que vai além do simples acúmulo de riqueza.\n\n'
                      'Em termos de impacto econômico, Faciola teve uma influência significativa na economia local, não apenas por meio de seus empreendimentos diretos, mas também por suas atividades de investimento e desenvolvimento. Ele ajudou a transformar Belém em um centro econômico vibrante, apoiando a construção de infraestrutura e promovendo o crescimento do setor comercial.\n\n'
                      'Francisco Faciola faleceu em 1920, mas seu legado continua a ser celebrado em Belém, especialmente através do Palacete Faciola, que permanece como um símbolo de sua contribuição para a cidade. O edifício é um importante exemplo da riqueza e da opulência que caracterizavam a elite da época e serve como um marco histórico da prosperidade do ciclo da borracha.\n\n'
                      'O público que visitar o local também tem a oportunidade de acessar mobiliários do Museu da Imagem e do Som (MIS) e do Museu do Estado do Pará (MEP), além de uma biblioteca especializada em publicações do departamento, com processos, fotografias, livros, dentre outros, disponíveis para pesquisa.\n\n'
                      'As principais obras da coleção são longas-metragens e documentários de Líbero Luxardo, cine jornais, documentário do Museu do Marajó, partituras, músicas, cartas e fotografias, cartazes de filmes, depoimentos de figuras públicas paraenses, filmes paraenses contemporâneos e filmes brasileiros da Agência Nacional do Cinema.',
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
