import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:no_smoke/progresso.dart';

class MyCustomCard extends StatelessWidget {
  const MyCustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Progresso()),
        );
      },
      child: Card(
        color: Color.fromARGB(255, 231, 89, 46),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Icon(
                FontAwesomeIcons.listCheck,
                size: 90.0,
                color: Colors.white,
              ),
              Container(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(height: 5),
                    Text(
                      "Progresso Geral",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Onest',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Container(height: 5),
                    Text(
                      "X Dias \nX Cigarros \nEconomia",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Container(height: 5),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Sample classes (Replace these with your actual implementations)
class ImgSample {
  static String get(String path) {
    // Your implementation
    return 'assets/google_logo.png';
  }
}

class MyTextSample {
  static TextStyle? title(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge;
  }

  static TextStyle? body1(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium;
  }

  static TextStyle? subhead(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium;
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
  static const card_text = "X dias";
}
