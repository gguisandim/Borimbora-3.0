import 'package:flutter/material.dart';
import 'buttons.dart';

class PedroGusmaoPage extends StatefulWidget {
  @override
  _PedroGusmaoPageState createState() => _PedroGusmaoPageState();
}

class _PedroGusmaoPageState extends State<PedroGusmaoPage> {
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
        title: Text("Palacete Pedro Gusmão"),
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
                  'lib/assets/pedrogusmao.png', // Certifique-se de que a imagem está no caminho correto
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
                        'Preço da entrada: Não há informações',
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
                        'Horário de visita: 9h às 13h e 14h às 16h',
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
                      'Pedro Gusmão, nascido em 1875, foi um destacado comerciante e político de Belém, Pará. Ele acumulou uma significativa fortuna através do comércio de borracha e café, setores que foram fundamentais para a economia da região durante o ciclo da borracha. '
                      'O Palacete Pedro Gusmão foi construído entre 1910 e 1913, e o edifício serviu como uma residência luxuosa que refletia o sucesso e o status de Gusmão. A arquitetura do palacete é um exemplo do estilo eclético, combinando elementos neoclássicos com detalhes revivalistas. '
                      'A fachada do edifício é adornada com colunas e ornamentos elaborados, enquanto o interior é decorado com acabamentos de alta qualidade e móveis sofisticados. '
                      'O palacete não apenas serviu como uma residência privada, mas também como um local de recepção para eventos sociais e políticos. '
                      'Pedro Gusmão era uma figura influente na sociedade paraense e usou sua riqueza e status para apoiar diversas causas e iniciativas culturais. '
                      'Após a morte de Pedro Gusmão em 1925, o palacete passou por diferentes proprietários e usos, mas continua a ser um importante símbolo da riqueza e da opulência da época. '
                      'O edifício é um testemunho do sucesso de Gusmão e da prosperidade de Belém durante o ciclo da borracha.'
                      'O palacete é um exemplo notável da arquitetura eclética característica da virada do século XIX para o XX. Com elementos neoclássicos e art nouveau, sua estrutura original incluía detalhes ornamentais sofisticados, como balaustradas, colunas, vitrais coloridos e um amplo jardim externo. '
                      'Era uma residência suntuosa que refletia o poder e a influência de seu proprietário na época áurea da borracha. '
                      'Durante seu auge, o Palacete Gusmão era um ponto de encontro para a elite da época, onde se realizavam saraus, festas e eventos sociais importantes. '
                      'Além de sua função residencial, o palacete também desempenhou um papel significativo na vida política e cultural de Belém, testemunhando muitos momentos históricos importantes da cidade. '
                      'Ao longo dos anos, o palacete passou por várias transformações e restaurações para preservar sua estrutura original e importância histórica. '
                      'Atualmente, é considerado um patrimônio cultural de Belém e abriga o Museu de Arte de Belém (MABE), que exibe uma coleção de obras de arte significativas relacionadas à história e cultura da Amazônia. '
                      'Assim, o Palacete Gusmão não apenas representa a opulência e o estilo de vida da Belle Époque na região amazônica, mas também continua a ser um símbolo de identidade cultural e histórica para os habitantes de Belém e visitantes interessados na rica herança da cidade. '
                      'O local não está aberto para visitação.',
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
