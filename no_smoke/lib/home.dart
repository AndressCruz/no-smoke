import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:no_smoke/cards/meta_card.dart';
import 'package:no_smoke/cards/prg_conq.dart';
import 'package:no_smoke/cards/saude_card.dart';
import 'package:no_smoke/comunidades.dart';
import 'package:no_smoke/home_widget/progresso_widget.dart';
import 'package:no_smoke/login.dart';
import 'package:no_smoke/progresso.dart';
import 'package:no_smoke/saude.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu), // Ícone do menu à esquerda
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 231, 89, 46),
      ),
      body: _body(),
      drawer: MySidebar(),
    );
  }

  Widget _body() {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 231, 89, 46),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 240,
          ),
          child: Text(
            'Olá,\nUsuário.',
            style: TextStyle(
              fontSize: 35,
              fontFamily: 'Onest',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Container(
            padding: EdgeInsets.only(
              top: 30,
              left: 40,
              right: 40,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white,
            ),
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 110,
          ),
          child: ListView(
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Image.asset("assets/logo_no_smoke.jpg"),
              ),
              MyCustomCard(),
              PrgConCard(),
              SaudeCard(),
            ],
          ),
        ),
      ],
    );
  }
}

class MySidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Nome do Usuário',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Onest',
                  fontSize: 24 // Cor do texto do nome do usuário
                  ),
            ),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
            decoration: BoxDecoration(
              color: Colors.red, // Cor de fundo do cabeçalho
              image: DecorationImage(
                image: AssetImage('assets/side_bar_logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.listCheck),
            title: Text(
              'Progresso Geral',
              style: TextStyle(
                color: Colors.red, // Cor do texto do item do menu
              ),
            ),
            onTap: () {
              // Implemente a ação quando "Progresso Geral" for selecionado
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Progresso()),
              );
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.comment),
            title: Text(
              'Comunidade',
              style: TextStyle(
                color: Colors.red, // Cor do texto do item do menu
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Comunidade()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text(
              'Metas',
              style: TextStyle(
                color: Colors.red, // Cor do texto do item do menu
              ),
            ),
            onTap: () {
              // Implemente a ação quando "Metas" for selecionado
              Navigator.pop(context); // Fecha o Drawer
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trophy),
            title: Text(
              'Conquistas',
              style: TextStyle(
                color: Colors.red, // Cor do texto do item do menu
              ),
            ),
            onTap: () {
              // Implemente a ação quando "Conquistas" for selecionado
              Navigator.pop(context); // Fecha o Drawer
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.notesMedical),
            title: Text(
              'Melhorias na Saúde',
              style: TextStyle(
                color: Colors.red, // Cor do texto do item do menu
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Saude()),
              );
            },
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'Log Out',
              style: TextStyle(
                color: Colors.red, // Cor do texto do item do menu
              ),
            ),
            onTap: () {
              FirebaseAuth.instance.signOut().then((value) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              });
            },
          ),
        ],
      ),
    );
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      print("Sign-out successful");
    } catch (e) {
      print("Error during sign-out: $e");
    }
  }
}
