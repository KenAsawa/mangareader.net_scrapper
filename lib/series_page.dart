import 'package:flutter/material.dart';
import './html_scraper.dart';

class SeriesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() { //Constructor
    return _SeriesPageState();
  }
}

class _SeriesPageState extends State<SeriesPage> {
  int pageIndex = 0;
  List<String> chapter = [];

  void initState() { //Method runs when widget is first drawn.
    loadChapter();
    super.initState();
  }

  Future<List<String>> getChapter() async {
    HtmlScraper htmlScraper = HtmlScraper();
    return await htmlScraper.initiate();
  }

  void loadChapter() {
    getChapter().then((result) {
      setState(() {
        print(result);
        chapter = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chapters'),
        ),
        body: Text(
            "hello",
        ),
    );
  }
}