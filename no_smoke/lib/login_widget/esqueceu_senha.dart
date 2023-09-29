// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EsqueceuSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(
              context, '/index'); // Navegar para a página 'index'
        },
        child: Text(
          "Esqueceu sua senha?",
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
