// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:no_smoke/notificacoes.dart';
import 'package:no_smoke/preco_widget/preco_botao.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrecoCigarro extends StatefulWidget {
  const PrecoCigarro({super.key});

  @override
  State<PrecoCigarro> createState() => _PrecoCigarroState();
}

class _PrecoCigarroState extends State<PrecoCigarro> {
  TextEditingController _precoCigarro = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.only(
        top: 70,
        left: 40,
        right: 40,
      ),
      color: Colors.white,
      child: ListView(
        children: [
          Text(
            'Qual é o preço do maço que você fuma?',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          TextFormField(
            controller: _precoCigarro,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: FaIcon(
              FontAwesomeIcons.moneyCheckDollar, // Ícone de calendário
              size: 100.0, // Tamanho do ícone
              color: Colors.red, // Cor do ícone
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                quardarPreco();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notificacoes()));
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              child: Text("Continuar"),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> quardarPreco() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('precoCigarro', _precoCigarro.text);
  }
}
