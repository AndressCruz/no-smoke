// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmailInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType:
          TextInputType.emailAddress, // Define o tipo de teclado como email
      decoration: InputDecoration(
        labelText: 'Email', // Rótulo do campo
        hintText: 'example@example.com', // Dica dentro do campo
        prefixIcon: Icon(Icons.email), // Ícone à esquerda do campo
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        labelStyle: TextStyle(
          color: Colors.red,
          fontSize: 16.0,
        ), // Borda ao redor do campo
      ),
    );
  }
}
