import 'package:flutter/material.dart';
import 'buttons.dart'; // Certifique-se de que o arquivo 'buttons.dart' está presente e contém a classe ActionButtons

class GovernadoresPage extends StatefulWidget {
  @override
  _GovernadoresPageState createState() => _GovernadoresPageState();
}

class _GovernadoresPageState extends State<GovernadoresPage> {
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
        title: Text('Palacete Governadores'),
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
                  'lib/assets/governadores.png', // Certifique-se de que a imagem está no caminho correto
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
                        'Preço da entrada: Não há informação',
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
                        'Horário de visita: Local indisponível para visitação',
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
                        'Local: Av Almirante Barroso, s/n - Souza, Belém - PA',
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
                      'O Palácio do Governo é o edifício sede do governo do Estado do Pará e um dos principais marcos arquitetônicos de Belém. A construção do palácio começou em 1904 e foi concluída em 1907. O edifício foi projetado para ser a sede do governo estadual e refletir a importância política e administrativa da cidade durante um período de crescimento econômico e modernização.\n\n'
                      'O Palácio do Governo é um exemplo notável da arquitetura eclética, combinando elementos do neoclássico com influências do revivalismo. A fachada do edifício é marcada por uma grandiosa estrutura com colunas imponentes e detalhes ornamentais sofisticados. O interior é igualmente impressionante, com grandes salões e acabamentos luxuosos que refletem a importância do edifício como sede do governo.\n\n'
                      'O palácio desempenhou um papel crucial na administração do Estado do Pará e foi o centro de importantes decisões políticas e administrativas. Durante a era do ciclo da borracha, o edifício serviu como um símbolo do poder e da riqueza da região, refletindo a influência política e econômica da cidade.\n\n'
                      'Embora a estrutura básica tenha sido preservada, o palácio passou por duas principais fases de reforma. Na primeira, foi adicionada uma platibanda e obeliscos no frontão triangular, enquanto na segunda, sob a gestão do governador Augusto Montenegro em 1904, a fachada foi extensivamente modificada com bossagens uniformes e novos elementos decorativos em pedra lioz. O interior também foi transformado, com a introdução de decorações ecléticas, incluindo mobiliário de época, pinturas pompeianas e clássicas pelo artista Joseph Casse, além de vitrais art nouveau.\n\n'
                      'As salas superiores, ricamente decoradas no estilo da época da borracha, são testemunhos vívidos do luxo e da influência europeia daquele período. A capela do palácio, meticulosamente restaurada para revelar os projetos originais de Antônio Landi, é um destaque especial, adornada com detalhes intricados e uma urna fogaréu no altar. Esses elementos históricos e arquitetônicos fazem do Palácio de Governo um destino imperdível para os entusiastas de história e arquitetura, oferecendo uma oportunidade única para explorar as camadas de sua história e apreciar sua beleza restaurada. Por hora, o palácio não encontra-se aberto para visitação.',
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
