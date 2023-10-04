// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Importe para usar o TextInputFormatter

class PrecoInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red), // Borda vermelha
        borderRadius: BorderRadius.circular(8.0), // Borda arredondada
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 12.0), // Espaçamento horizontal
        child: TextField(
          textAlign: TextAlign.center, // Alinhe os números ao centro
          keyboardType:
              TextInputType.number, // Define o tipo de teclado como número
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly, // Permite apenas dígitos
          ],
          decoration: InputDecoration(
            border: InputBorder.none, // Remova a borda padrão
            hintText: 'R\$ 00,00', // Placeholder "00"
            hintStyle: TextStyle(color: Colors.grey), // Cor do placeholder
          ),
        ),
      ),
    );
  }
}
