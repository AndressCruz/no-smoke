import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ForumScreen(),
    );
  }
}

class ForumScreen extends StatefulWidget {
  @override
  _ForumScreenState createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {
  List<String> depoimentos = [];

  @override
  Widget build(BuildContext context) {
    return ForumWidget(
        depoimentos: depoimentos, onSendPressed: _handleSendPressed);
  }

  void _handleSendPressed() {
    if (depoimentos.length < 10) {
      setState(() {
        depoimentos.add('Novo depoimento: ' + DateTime.now().toString());
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Limite de depoimentos atingido.'),
        ),
      );
    }
  }
}

class ForumWidget extends StatelessWidget {
  final List<String> depoimentos;
  final VoidCallback onSendPressed;

  ForumWidget({required this.depoimentos, required this.onSendPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fórum de Depoimentos'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: depoimentos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(depoimentos[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Digite seu depoimento...',
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: onSendPressed,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
