import 'package:flutter/material.dart';
import 'buttons.dart';

class UmaNoiteNoMuseuPage extends StatefulWidget {
  @override
  _UmaNoiteNoMuseuPageState createState() => _UmaNoiteNoMuseuPageState();
}

class _UmaNoiteNoMuseuPageState extends State<UmaNoiteNoMuseuPage> {
  bool showDetails = false;

  void toggleDetails() {
    setState(() {
      showDetails = !showDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uma Noite no Museu'),
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
                  'lib/assets/umanoite.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200.0,
                ),
              ),
              SizedBox(height: 16.0),
              _buildEventInfo(),
              SizedBox(height: 16.0),
              if (showDetails) _buildDetails(),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: toggleDetails,
                child: Text(showDetails ? 'Esconder Detalhes' : 'Ver Detalhes'),
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
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEventInfo() {
    return Column(
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
              'Horário de visita: Das 18h às 22h.',
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
              'Local: Museus de Arte Sacra (MAS), do Estado (MEP), da Imagem e do Som (MIS), do Círio, e do Forte, além da Casa das 11 Janelas, do Palacete Faciola e do Parque Cemitério da Soledade.',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDetails() {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'A Secretaria de Estado de Cultura (Secult) realiza nesta primeira sexta-feira do mês, 3 de maio, mais uma edição do circuito Uma Noite no Museu. Das 18h às 22h, estarão abertos para visitação os Museus de Arte Sacra (MAS), do Estado (MEP), da Imagem e do Som (MIS), do Círio, e do Forte, além da Casa das 11 Janelas, do Palacete Faciola e do Parque Cemitério da Soledade. A programação é gratuita. '
          'Esta é a segunda edição do ano. A primeira, em março, levou mais de 10 mil pessoas aos equipamentos vinculados ao Sistema Integrado de Museus e Memoriais (SIMM/Secult), e aos museus convidados daquela edição. Esta edição de sexta-feira conta novamente com o Museu de Arte de Belém, com a exposição “Coreografias do Impossível”, da 35ª Bienal de São Paulo; e o Centro de Memória da Polícia Militar.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
