// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProgressoGeral extends StatelessWidget {
  const ProgressoGeral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.calendar_today, // Ícone de calendário
                size: 50.0, // Tamanho do ícone
                color: Colors.red,
              ),
              Icon(
                Icons.monetization_on, // Ícone de calendário
                size: 50.0, // Tamanho do ícone
                color: Colors.red,
              ),
              Icon(
                Icons.smoking_rooms, // Ícone de calendário
                size: 50.0, // Tamanho do ícone
                color: Colors.red,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '0 dias',
                style: TextStyle(
                  fontFamily: 'Onest',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Text(
                'Cigarros',
                style: TextStyle(
                  fontFamily: 'Onest',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Text(
                'Dinheiro',
                style: TextStyle(
                  fontFamily: 'Onest',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
