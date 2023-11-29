// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:no_smoke/login_widget/botaoCadastro.dart';
import 'package:no_smoke/login_widget/botaoEntrar.dart';
import 'package:no_smoke/login_widget/esqueceu_senha.dart';
import 'package:no_smoke/login_widget/inputLogin.dart';
import 'package:no_smoke/login_widget/inputSenha.dart';
import 'package:no_smoke/login_widget/login_google.dart';
import 'package:no_smoke/stop.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController _email = TextEditingController();
  TextEditingController _senha = TextEditingController();
  late FirebaseAuth _auth;

  @override
  Widget build(BuildContext context) {
    _initFirebase();
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
          // EmailInputField(),
          TextFormField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'exemplo@gmail.com',
              )),
          SizedBox(
            height: 30,
          ),
          // PasswordInputField(),
          TextFormField(
              controller: _senha,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                hintText: 'Digite sua senha',
              )),
          EsqueceuSenha(),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                _authenticate();
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              child: Text("Entrar"),
            ),
          ),
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

  Future<void> _initFirebase() async {
    await Firebase.initializeApp();
    if (Firebase.initializeApp() == null) {
      print("Erro ao inicializar o Firebase");
    } else {
      print("Firebase inicializado com sucesso");
    }
    _auth = FirebaseAuth.instance;
  }

  Future<void> _authenticate() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: _email.text.toString(), password: _senha.text.toString());
      print("Autorizado");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => StopSmoke()),
      );
    } catch (e) {
      print("Não autorizado $e");
    }
    setState(() {});
  }
}
