import 'package:flutter/material.dart';
import 'package:no_smoke/cadastro.dart';

class GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // Navigator.push(
        //   context
        //   // MaterialPageRoute(
        //   //   builder: (context) =>
        //   //       const Cadastro(), // Navegar para a tela de cadastro
        //   // ),
        // );
      },
      icon: Image.asset(
        'assets/google_logo_2.png', // Substitua pelo caminho real para o ícone do Google
        height: 24.0,
      ), // Ícone do Google
      label: Text('Entrar com o Google'),
      style: ElevatedButton.styleFrom(
        primary: Colors.white, // Cor de fundo do botão
        onPrimary: Colors.black, // Cor do texto do botão
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Borda arredondada
        ),
        padding: EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 12.0), // Espaçamento interno
      ),
    );
  }
}
