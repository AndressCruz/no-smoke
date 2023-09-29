import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrofeuConquista extends StatelessWidget {
  const TrofeuConquista({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 14.0), // Espaçamento interno
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent), // Borda preta
        borderRadius: BorderRadius.circular(8.0), // Borda arredondada
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                FontAwesomeIcons.trophy,
                size: 50.0,
                color: Colors.yellow,
              ),
              Icon(
                FontAwesomeIcons.trophy,
                size: 50.0,
                color: Colors.yellow,
              ),
              Icon(
                FontAwesomeIcons.trophy,
                size: 50.0,
                color: Colors.yellow,
              ),
              Icon(
                FontAwesomeIcons.trophy,
                size: 50.0,
                color: Colors.yellow,
              ),
              Icon(
                FontAwesomeIcons.trophy,
                size: 50.0,
                color: Colors.yellow,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
