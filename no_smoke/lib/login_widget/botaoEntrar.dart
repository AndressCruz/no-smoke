import 'package:flutter/material.dart';
import 'package:no_smoke/stop.dart';

class BotaoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0, // Largura desejada
      height: 50.0, // Altura desejada
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red, // Cor de fundo vermelha
          onPrimary: Colors.white, // Cor do texto branca
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Bordas arredondadas
          ),
        ),
        onPressed: () {
          _telaCadastro(context);
        },
        child: Text('Entrar'),
      ),
    );
  }

  void _telaCadastro(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) =>
            StopSmoke(), // Substitua 'Cadastro()' pela classe de tela de cadastro
      ),
    );
  }
}
