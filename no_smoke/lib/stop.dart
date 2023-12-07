import 'package:flutter/material.dart';
import 'package:no_smoke/quantidade.dart';
import 'package:no_smoke/stop_widget/stop_radio_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StopSmoke extends StatefulWidget {
  const StopSmoke({super.key});

  @override
  State<StopSmoke> createState() => _StopSmokeState();
}

class _StopSmokeState extends State<StopSmoke> {
  TextEditingController _data = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Você já parou de fumar?',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 25,
          ),
          RadioButtonsWidget(),
          SizedBox(
            height: 55,
          ),
          Text(
            'Quando você parou ou pretende parar de fumar?',
            style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          // DateInput(),
          TextFormField(
              controller: _data,
              decoration: InputDecoration(
                labelText: 'Data',
                hintText: 'dd/mm/aaaa',
              )),
          SizedBox(
            height: 30,
          ),
          Center(
            child: FaIcon(
              FontAwesomeIcons.calendarCheck, // Ícone de calendário
              size: 100.0, // Tamanho do ícone
              color: Colors.red, // Cor do ícone
            ),
          ),
          SizedBox(
            height: 70,
          ),
          // BotaoStopContinuar(),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                guardarData();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Quantidade()));
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
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Future guardarData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('data', _data.text);
  }
}
