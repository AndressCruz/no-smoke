import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrgConCard extends StatelessWidget {
  const PrgConCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: MyColorsSample.primaryDark,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Comunidade.",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Container(height: 10),
                    Text(
                      MyStringsSample.card_text,
                      style: TextStyle(fontSize: 15, color: Colors.grey[200]),
                    ),
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    // Remove foregroundColor property
                    ),
                // child: const Text(
                //   "LISTEN NOW",
                //   style: TextStyle(color: Colors.white),
                // ),
                child:
                    const Icon(FontAwesomeIcons.comment, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(height: 5),
        Row(
          children: <Widget>[
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                color: MyColorsSample.primary,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        "Meta \nfoi definida",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(
                        color: Colors.white, thickness: 0.5, height: 0),
                    Row(
                      children: <Widget>[
                        Container(width: 15),
                        const Text("Outubro 04, 2023",
                            style: TextStyle(color: Colors.white)),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.event, color: Colors.white),
                          onPressed: () {},
                        ),
                        Container(width: 4),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(width: 2),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                color: MyColorsSample.primary,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(width: 15),
                        const Text("Conquistas",
                            style: TextStyle(color: Colors.white)),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.trophy,
                              color: Colors.white),
                          onPressed: () {},
                        ),
                        Container(width: 4),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        "Suas \nconquistas",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(height: 3),
      ],
    );
  }
}

class MyColorsSample {
  static const Color primary = Color(0xFF12376F);
  static const Color primaryDark = Color(0xFF0C44A3);
  static const Color primaryLight = Color(0xFF43A3F3);
  static const Color green = Colors.green;
  static Color black = const Color(0xFF000000);
  static const Color accent = Color(0xFFFF4081);
  static const Color accentDark = Color(0xFFF50057);
  static const Color accentLight = Color(0xFFFF80AB);
  static const Color grey_3 = Color(0xFFf7f7f7);
  static const Color grey_5 = Color(0xFFf2f2f2);
  static const Color grey_10 = Color(0xFFe6e6e6);
  static const Color grey_20 = Color(0xFFcccccc);
  static const Color grey_40 = Color(0xFF999999);
  static const Color grey_60 = Color(0xFF666666);
  static const Color grey_80 = Color(0xFF37474F);
  static const Color grey_90 = Color(0xFF263238);
  static const Color grey_95 = Color(0xFF1a1a1a);
  static const Color grey_100_ = Color(0xFF0d0d0d);
  static const Color transparent = Color(0x00f7f7f7);
  static const Color red_100 = Color(0xFFFFCDD2);
}

class MyStringsSample {
  static const card_text = "Conecte-se e compartilhe suas expêriencias";
}
