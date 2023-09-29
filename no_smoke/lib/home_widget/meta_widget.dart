import 'package:flutter/material.dart';

class MetaBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.0), // Espaçamento interno
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent), // Borda preta
        borderRadius: BorderRadius.circular(8.0), // Borda arredondada
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.calendar_today, // Ícone de calendário
            size: 50.0, // Tamanho do ícone
            color: Colors.red, // Cor do ícone
          ),
          SizedBox(height: 10.0), // Espaçamento entre o ícone e o texto
          Text(
            'Sua meta será atingida daqui a x dias...',
            textAlign: TextAlign.center, // Alinhamento do texto
            style: TextStyle(fontSize: 18.0), // Estilo do texto
          ),
        ],
      ),
    );
  }
}
