// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:no_smoke/cadastro_widget/botao_cadastro.dart';
import 'package:no_smoke/cadastro_widget/checkbox.dart';
import 'package:no_smoke/login_widget/inputLogin.dart';
import 'package:no_smoke/login_widget/inputSenha.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.only(
        top: 60,
        left: 40,
        right: 40,
      ),
      color: Colors.white,
      child: ListView(
        children: [
          Text(
            'Cadastre-se',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          EmailInputField(),
          SizedBox(
            height: 30,
          ),
          PasswordInputField(),
          SizedBox(
            height: 30,
          ),
          AgreementCheckbox(),
          SizedBox(
            height: 50,
          ),
          BotaoEfetuarCadastro(),
        ],
      ),
    );
  }
}
