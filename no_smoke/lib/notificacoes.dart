// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:no_smoke/notificacao_widget/aceitar_botao.dart';
import 'package:no_smoke/notificacao_widget/recusao_botao.dart';

class Notificacoes extends StatelessWidget {
  const Notificacoes({super.key});

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
            'Deseja receber notificações sobre saúde e avanço de progresso?',
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
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset("assets/doctor.png"),
          ),
          SizedBox(
            height: 20,
          ),
          AceitarBotao(),
          SizedBox(
            height: 20,
          ),
          RecusarBotao(),
        ],
      ),
    );
  }
}
