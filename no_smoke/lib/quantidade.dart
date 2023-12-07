// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:no_smoke/preco_cigarro.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Quantidade extends StatefulWidget {
  const Quantidade({Key? key}) : super(key: key);

  @override
  State<Quantidade> createState() => _QuantidadeState();
}

class _QuantidadeState extends State<Quantidade> {
  TextEditingController _qtdCigarros = TextEditingController();
  TextEditingController _qtdMaco = TextEditingController();
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
        top: 70,
        left: 40,
        right: 40,
      ),
      color: Colors.white,
      child: ListView(
        children: [
          Text(
            'Quantos cigarros você fuma por dia?',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          // QtdInput(),
          TextFormField(
            controller: _qtdCigarros,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            'Quantos cigarros vem no maço?',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          // QtdInput(),
          TextFormField(
            controller: _qtdMaco,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                quardarQtdPreco();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PrecoCigarro()));
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
              child: Text("Continuar"),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> quardarQtdPreco() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('qtdCigarro', _qtdCigarros.text);
    prefs.setString('qtdMaco', _qtdMaco.text);
  }
}
