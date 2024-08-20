import 'package:flutter/material.dart';
import 'buttons.dart';

class ChermontPage extends StatefulWidget {
  @override
  _ChermontPageState createState() => _ChermontPageState();
}

class _ChermontPageState extends State<ChermontPage> {
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
        title: Text('Palacete Chermont'),
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
                  'lib/assets/chermont.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
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
                        'Não há informações',
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
                        'Horário de visita: Não está aberto para visitação',
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
                        'Local: Av. Nossa Sra. de Nazaré, 871 - Nazaré, Belém - PA',
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
                      'Emílio Chermont, o nome associado ao Palacete Chermont, foi uma figura proeminente em Belém, Pará, durante o final do século XIX e início do século XX. Nascido em 1855, Chermont era um empresário e político influente cuja fortuna foi acumulada principalmente através do comércio de borracha e café, ambos setores fundamentais para a economia da região durante o ciclo da borracha.'
                      '\n\nA construção do Palacete Chermont começou em 1895 e foi concluída em 1901. O projeto do palacete refletia a riqueza e a posição social de Chermont. Com um estilo arquitetônico que mistura elementos neoclássicos e revivalistas, o edifício apresenta uma fachada grandiosa, com ornamentos em pedra e detalhes intricados. O interior do palacete é igualmente impressionante, com acabamentos sofisticados, móveis de época e decoração elaborada. O palacete é um exemplo claro da opulência e do prestígio que Chermont desfrutava.'
                      '\n\nAlém de seu sucesso como empresário, Chermont foi uma figura ativa na política local. Ele ocupou cargos importantes e foi um patrono de várias causas sociais e culturais. Seu envolvimento com a política e a sociedade local foi um reflexo de seu desejo de contribuir para o desenvolvimento de Belém. Chermont apoiou diversas iniciativas que promoveram o crescimento econômico e social da cidade, ajudando a modernizar a infraestrutura e a melhorar as condições de vida para os habitantes de Belém.',
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
