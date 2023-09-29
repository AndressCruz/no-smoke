// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:no_smoke/stop_widget/stop_botao.dart';
import 'package:no_smoke/stop_widget/stop_data.dart';
import 'package:no_smoke/stop_widget/stop_radio_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StopSmoke extends StatelessWidget {
  const StopSmoke({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Você já parou de fumar?',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 25,
          ),
          RadioButtonsWidget(),
          SizedBox(
            height: 55,
          ),
          Text(
            'Quando você parou ou pretende parar de fumar?',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          DateInput(),
          SizedBox(
            height: 30,
          ),
          Center(
            child: FaIcon(
              FontAwesomeIcons.calendarCheck, // Ícone de calendário
              size: 100.0, // Tamanho do ícone
              color: Colors.red, // Cor do ícone
            ),
          ),
          SizedBox(
            height: 70,
          ),
          BotaoStopContinuar(),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
