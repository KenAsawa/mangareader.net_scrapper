import 'package:flutter/material.dart';
import './html_scraper.dart';
import './series_page.dart';
import 'package:manga_app/html_scraper.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Manga Reader';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          padding: const EdgeInsets.all(30.0),
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          childAspectRatio: 0.55,
          crossAxisCount: 3,
          // Generate 20 Widgets that display their index in the List
          children: List.generate(1, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeriesPage()),
                );
              },
              child: new Container(
                child: new Column(
                  children: [
                    Image.asset('assets/images/one-piece-cover.jpg'),
                    Text('One Piece')
                  ]
                ),
              )
            );
          }),
        ),
      ),
    );
  }
}


