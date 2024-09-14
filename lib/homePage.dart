import 'package:api_consumer_class/apiCEP.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController cepTextEditingController =
      TextEditingController();
  String resposta = '';
  String respostaFinal = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: const Text(
            'Página Inicial',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextFormField(
                controller: cepTextEditingController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () async {
                  resposta = await ApiCEP().buscarCEP(cepTextEditingController.text);
                  setState(() {
                    respostaFinal = resposta;
                  });
                },
                child: const Text(
                  'consultar',
                  style: TextStyle(color: Colors.white),

                ),
              ),
              Text('Informações $respostaFinal')
            ],
          ),
        ));
  }
}
