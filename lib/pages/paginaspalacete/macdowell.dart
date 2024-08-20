import 'package:flutter/material.dart';
import 'buttons.dart';

class MacDowellPage extends StatefulWidget {
  @override
  _MacDowellPageState createState() => _MacDowellPageState();
}

class _MacDowellPageState extends State<MacDowellPage> {
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
        title: Text("Palacete Mac Dowell"),
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
                  'lib/assets/macdowell.png', // Verifique se a imagem está no caminho correto
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
                        'Horário de visita: De terça-feira aos domingos, das 09h às 16h',
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
                        'Local: Av. Gov. Magalhães Barata, 53 - Nazaré, Belém - PA',
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
                      'Mac Dowell foi um proeminente empresário e investidor de Belém, nascido em 1868. Ele era conhecido por seu envolvimento em diversos setores da economia, incluindo o comércio de borracha e café, que foram fundamentais para o crescimento e o desenvolvimento da cidade durante o ciclo da borracha.\n\n'
                      'O Palacete Mac Dowell foi construído entre 1911 e 1915 e projetado para ser uma residência luxuosa que refletisse o sucesso e o prestígio de Mac Dowell. O edifício apresenta uma arquitetura eclética, combinando elementos do neoclássico e do revivalismo. A fachada do palacete é adornada com colunas imponentes e detalhes ornamentais elaborados, enquanto o interior é decorado com acabamentos sofisticados e móveis de época.\n\n'
                      'O palacete serviu como um símbolo do status de Mac Dowell e da riqueza acumulada durante a era de ouro da borracha. Além de sua função como residência, o edifício também foi um local de encontros sociais e eventos importantes, refletindo o papel de Mac Dowell na vida pública e cultural de Belém.\n\n'
                      'Após a morte de Mac Dowell em 1930, o palacete passou por diferentes proprietários e usos, mas continua a ser um importante marco histórico. O edifício é um testemunho da opulência e da influência dos empresários da época e do impacto do ciclo da borracha em Belém.\n\n'
                      'Ao longo dos anos, o palacete foi cedido à Igreja Assembleia de Deus em Belém do Pará, tendo como objetivo preservar os registros e artefatos. O fruto desse esforço é um acervo abundante de milhares de itens, incluindo atas, registros financeiros, pinturas, fotos e objetos pessoais dos pioneiros e de muitos outros que continuaram a missão. Hoje, essas coleções narram, com fervor e devoção, a notável jornada iniciada no Norte do Brasil.\n\n'
                      'O Museu da Assembleia de Deus abriu suas portas ao público em 27 de dezembro de 1994. Inicialmente, sua Sala de Exposição ficava no térreo do templo principal da Assembleia de Deus em Belém do Pará. Como parte das celebrações do Centenário, foi inaugurada em Belém, em 10 de junho de 2011, uma nova sede no coração do Centro Histórico de Belém, na Rua João Diogo, 221, com uma exposição cuidadosamente planejada e organizada por salas e temas.\n\n'
                      'Após uma década dessa experiência bem-sucedida, o Museu sentiu a necessidade de expandir suas instalações para melhor receber os visitantes e reabre suas portas em um espaço ampliado, com instalações aprimoradas e um compromisso renovado com o acervo e a preservação. O novo endereço será em uma casa cuja memória e história evocam os dias áureos da "época da Borracha", conectando a história da fé com a história da cidade de Belém durante a Belle Époque.\n\n'
                      'O local encontra-se aberto para visitação em alguns dias da semana que serão especificados abaixo.',
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
