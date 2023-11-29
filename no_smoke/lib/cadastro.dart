// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:no_smoke/cadastro_widget/checkbox.dart';
import 'package:no_smoke/login.dart';

class Cadastro extends StatefulWidget {
  @override
  State<Cadastro> createState() => _CadastroState();
}

TextEditingController _email = TextEditingController();
TextEditingController _senha = TextEditingController();
late FirebaseAuth _auth;

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    _initFirebase();
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
          TextFormField(
              controller: _senha,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                hintText: 'Digite sua senha',
              )),
          SizedBox(
            height: 30,
          ),
          AgreementCheckbox(),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                _signUp();
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

  void _signUp() async {
    String email = _email.text;
    String senha = _senha.text;

    User? user = (await _auth.createUserWithEmailAndPassword(
            email: email, password: senha))
        .user;

    if (user != null) {
      print("Usuário criado com sucesso!");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    } else {
      print("Erro ao criar usuário");
    }
  }
}
