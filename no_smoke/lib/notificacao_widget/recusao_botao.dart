import 'package:flutter/material.dart';
import 'package:no_smoke/login.dart';

class RecusarBotao extends StatelessWidget {
  const RecusarBotao({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0, // Largura desejada
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const LoginPage(), // Navegar para a tela de cadastro
            ),
          );
        },
        child: Text('Não aceito'),
      ),
    );
  }
}
