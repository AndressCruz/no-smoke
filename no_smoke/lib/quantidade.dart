// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:no_smoke/qtd_widget/input_qtd.dart';
import 'package:no_smoke/qtd_widget/qtd_botao.dart';

class Quantidade extends StatelessWidget {
  const Quantidade({super.key});

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
            'Quantos cigarros você fuma por dia?',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          QtdInput(),
          SizedBox(
            height: 60,
          ),
          Text(
            'Quantos cigarros vem no maço?',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          QtdInput(),
          SizedBox(
            height: 100,
          ),
          BotaoQtd()
        ],
      ),
    );
  }
}
