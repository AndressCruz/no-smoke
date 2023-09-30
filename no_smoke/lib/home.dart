// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:no_smoke/cards/meta_card.dart';
import 'package:no_smoke/cards/prg_conq.dart';
import 'package:no_smoke/cards/saude_card.dart';
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
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 12, 0, 232),
              Color.fromARGB(255, 255, 255, 255),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 58,
            left: 240,
          ),
          child: Text(
            'Olá,\nUsuário.',
            style: TextStyle(
              fontSize: 35,
              fontFamily: 'Onest',
            ),
            textAlign: TextAlign.right,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: Container(
            padding: EdgeInsets.only(
              top: 60,
              left: 40,
              right: 40,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white,
            ),
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 120,
          ),
          child: ListView(
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Image.asset("assets/logo_no_smoke.jpg"),
              ),
              MyCustomCard(),
              PrgConCard(),
              SaudeCard(),
            ],
          ),
        ),
      ],
    );
  }
}
