import 'package:flutter/material.dart';
import 'package:no_smoke/home.dart';

void main() {
  runApp(Saude());
}

class NewsArticle {
  final String title;
  final String description;
  final String imageUrl;

  NewsArticle(this.title, this.description, this.imageUrl);
}

class Saude extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HealthNewsScreen(),
    );
  }
}

class HealthNewsScreen extends StatelessWidget {
  final List<NewsArticle> news = [
    NewsArticle(
      "Principais fatos do TABAGISMO",
      "Segundo a Organização Mundial da Saúde",
      "https://www.paho.org/sites/default/files/styles/max_325x325/public/smokers-lung_1.png?itok=p7PsbKYR", // Replace with the actual image URL
    ),
    NewsArticle(
      "Cultive comida - Não Tabaco",
      "31/05, dia mundial sem tabaco.",
      "http://cecanpiracicaba.com.br/wp-content/uploads/2023/05/Cecan-Combate-ao-Fumo-2023-Banner-Site-1.jpg",
    ),
    NewsArticle(
      "Doenças do cigarro e como parar de fumar",
      "Principais doenças e problemas relacionados ao cigarro",
      "https://www.mdsaude.com/wp-content/uploads/cigarro-doencas.jpg", // Replace with the actual image URL
    ),
    // Add more news articles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Saúde',
          style: TextStyle(
            fontFamily: 'Onest',
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
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
        itemCount: news.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                Image.network(
                  news[index].imageUrl,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                ListTile(
                  title: Text(
                    news[index].title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(news[index].description),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
