import 'package:flutter/material.dart';
import 'package:no_smoke/home.dart';

void main() => runApp(Comunidade());

class Comunidade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFeed(),
      theme: ThemeData(
        primaryColor: Colors.red, // Define a cor primária do tema
        hintColor: Colors.white, // Define a cor de destaque do tema
      ),
    );
  }
}

class MyFeed extends StatefulWidget {
  @override
  _MyFeedState createState() => _MyFeedState();
}

class _MyFeedState extends State<MyFeed> {
  final List<FeedItem> feedItems = [
    FeedItem(
      username: 'usuario1',
      text: 'Este é um exemplo de postagem em texto.',
      image: null,
      likes: 10,
    ),
    FeedItem(
      username: 'usuario2',
      text: 'Exemplo de postagem com imagem.',
      image: null,
      likes: 5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Comunidade',
          style: TextStyle(
            fontFamily: 'Onest',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          },
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: feedItems.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3.0,
            margin: EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  title: Text(feedItems[index].username),
                  subtitle: Text(feedItems[index].text),
                  leading: feedItems[index].image != null
                      ? Image.network(feedItems[index].image!)
                      : null,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: () {
                        setState(() {
                          feedItems[index].likes++; // Incrementa os likes
                        });
                      },
                    ),
                    Text('${feedItems[index].likes} Likes'),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class FeedItem {
  final String username;
  final String text;
  final String? image;
  int likes;

  FeedItem({
    required this.username,
    required this.text,
    this.image,
    this.likes = 0,
  });
}
