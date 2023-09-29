// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:no_smoke/home_widget/meta_widget.dart';
import 'package:no_smoke/home_widget/progresso_widget.dart';
import 'package:no_smoke/home_widget/trofeu_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.only(
        top: 60,
        left: 40,
        right: 40,
      ),
      color: Colors.white,
      child: ListView(
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: Image.asset("assets/logo_no_smoke.jpg"),
          ),
          Text(
            'NoSmoke',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
          ),
          Divider(
            color: Colors.red,
            thickness: 2.0,
          ),
          MetaBox(),
          Divider(
            color: Colors.red,
            thickness: 2.0,
          ),
          Text(
            'Progresso Geral',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            textAlign: TextAlign.left,
          ),
          ProgressoGeral(),
          Divider(
            color: Colors.red,
            thickness: 2.0,
          ),
          Text(
            'Conquistas',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            textAlign: TextAlign.left,
          ),
          TrofeuConquista(),
          Divider(
            color: Colors.red,
            thickness: 2.0,
          ),
          Text(
            'Melhorias na saúde',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            textAlign: TextAlign.left,
          ),
          Divider(
            color: Colors.red,
            thickness: 2.0,
          ),
          Text(
            'Comunidade',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
