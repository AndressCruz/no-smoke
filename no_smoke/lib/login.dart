// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:no_smoke/login_widget/botaoCadastro.dart';
import 'package:no_smoke/login_widget/botaoEntrar.dart';
import 'package:no_smoke/login_widget/esqueceu_senha.dart';
import 'package:no_smoke/login_widget/inputLogin.dart';
import 'package:no_smoke/login_widget/inputSenha.dart';
import 'package:no_smoke/login_widget/login_google.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SizedBox(
            width: 150,
            height: 150,
            child: Image.asset("assets/logo_no_smoke.jpg"),
          ),
          SizedBox(
            height: 30,
          ),
          EmailInputField(),
          SizedBox(
            height: 30,
          ),
          PasswordInputField(),
          EsqueceuSenha(),
          SizedBox(
            height: 50,
          ),
          BotaoLogin(),
          SizedBox(
            height: 40,
          ),
          Text(
            "Ou utilize sua conta Google:",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          GoogleLoginButton(),
          SizedBox(
            height: 30,
          ),
          BotaoCadastro(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
