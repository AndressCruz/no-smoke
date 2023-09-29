import 'package:flutter/material.dart';

class RadioButtonsWidget extends StatefulWidget {
  @override
  _RadioButtonsWidgetState createState() => _RadioButtonsWidgetState();
}

class _RadioButtonsWidgetState extends State<RadioButtonsWidget> {
  String selectedOption = 'Sim'; // Opção padrão selecionada

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio<String>(
              value: 'Sim',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                });
              },
              activeColor: Colors.red,
            ),
            Text('Sim'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio<String>(
              value: 'Não',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                });
              },
              activeColor: Colors.red,
            ),
            Text('Não'),
          ],
        ),
      ],
    );
  }
}
