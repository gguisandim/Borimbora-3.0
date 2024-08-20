import 'package:flutter/material.dart';
import 'buttons.dart';

class LourencoDaMottaPage extends StatefulWidget {
  @override
  _LourencoDaMottaPageState createState() => _LourencoDaMottaPageState();
}

class _LourencoDaMottaPageState extends State<LourencoDaMottaPage> {
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
        title: Text("Palacete Lourenço da Motta"),
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
                  'lib/assets/lourenco.png', // Verifique se a imagem está no caminho correto
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
                        'Horário de visita: De segunda-feira à sexta-feira, das 8h às 15h',
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
                        'Local: Av. Nossa Sra. de Nazaré, 582 - Nazaré, Belém - PA',
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
                      'Lourenço da Motta foi um destacado empresário e político paraense, nascido em 1850. Ele era conhecido por seu envolvimento em diversos setores econômicos, especialmente no comércio de borracha e café, que foram fundamentais para o crescimento de Belém durante o ciclo da borracha. Motta também teve um papel ativo na política local, contribuindo para o desenvolvimento da região. O Palacete Lourenço da Motta foi construído entre 1907 e 1910. A residência foi projetada para refletir o sucesso e o status de Motta, com uma arquitetura eclética que mistura elementos neoclássicos e revivalistas. A fachada do palacete é marcada por colunas imponentes e detalhes ornamentais elaborados, enquanto o interior apresenta acabamentos sofisticados e móveis de época. O palacete serviu como um símbolo da opulência de Lourenço da Motta e do prestígio adquirido durante a prosperidade econômica da região. Além de sua função como residência privada, o edifício também foi um local de encontros sociais e eventos importantes, refletindo o papel de Motta na vida pública e cultural de Belém. Após a morte de Lourenço da Motta em 1920, o palacete passou por diferentes proprietários e usos. No entanto, continua a ser um importante marco histórico, representando a riqueza e a influência dos empresários da época e o impacto do ciclo da borracha em Belém. A fachada é adornada com lambrequins rendilhados de madeira nos beirais, enquanto as janelas possuem esquadrias de madeira e vidro, conferindo-lhe um ar majestoso. A sacada é ornamentada com nove colunas coríntias, não estruturais, mas decorativas, remetendo ao estilo grego antigo. Atualmente, o palacete apresenta a entrada principal pela sua lateral, onde ganham destaque o portão de ferro e uma escadaria de mármore, na fachada também podemos observar um rico acabamento em lambrequim rendilhado de madeira recortada, que ornamentam os beirais do palacete. Pode-se observar esquadrias de madeira e vidro nas janelas, deixando um ar mais suntuoso, possui também guarda-corpo em ferro trabalhado. O Palacete abriga o Museu do Tribunal de Justiça do Estado do Pará, conhecido também como Museu do Judiciário ou Museu Judiciário Estadual Desembargador Agnano de Moura Monteiro Lopes, sendo um local histórico e culturalmente significativo em Belém.',
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
