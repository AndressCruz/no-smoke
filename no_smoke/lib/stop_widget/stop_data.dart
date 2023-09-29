// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DateInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red), // Borda vermelha
        borderRadius: BorderRadius.circular(8.0), // Borda arredondada
      ),
      child: TextField(
        keyboardType:
            TextInputType.datetime, // Define o tipo de teclado como data e hora
        decoration: InputDecoration(
          labelText: '', // Rótulo do campo (removido)
          hintText: 'DD/MM/YYYY', // Dica dentro do campo
          prefixIcon: Icon(Icons.calendar_today), // Ícone à esquerda do campo
          border: InputBorder.none, // Remova a borda padrão
          hintStyle: TextStyle(
            color: Colors.grey, // Cor do texto de dica
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
