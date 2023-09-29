// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:no_smoke/preco_widget/preco_botao.dart';
import 'package:no_smoke/preco_widget/preco_input.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrecoCigarro extends StatelessWidget {
  const PrecoCigarro({super.key});

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
          PrecoInput(),
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
          PrecoBotao(),
        ],
      ),
    );
  }
}
