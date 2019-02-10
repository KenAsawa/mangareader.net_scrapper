import 'package:flutter/material.dart';

class ChapterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() { //Constructor
    return _ChapterPageState();
  }
}

class _ChapterPageState extends State<ChapterPage> {
  int pageIndex = 0;

  List<String> chapterImages = [
  ];

  void initState() { //Method runs when widget is first drawn.
    chapterImages.add('assets/images/one-piece-11874343.jpg');
    chapterImages.add('assets/images/one-piece-11874349.jpg');
    chapterImages.add('assets/images/one-piece-11874355.jpg');
    chapterImages.add('assets/images/one-piece-11874361.jpg');
    chapterImages.add('assets/images/one-piece-11874367.jpg');
    chapterImages.add('assets/images/one-piece-11874373.jpg');
    chapterImages.add('assets/images/one-piece-11874379.jpg');
    chapterImages.add('assets/images/one-piece-11874385.jpg');
    chapterImages.add('assets/images/one-piece-11874391.jpg');
    chapterImages.add('assets/images/one-piece-11874397.jpg');
    chapterImages.add('assets/images/one-piece-11874403.jpg');
    chapterImages.add('assets/images/one-piece-11874409.jpg');
    chapterImages.add('assets/images/one-piece-11874415.jpg');
    chapterImages.add('assets/images/one-piece-11874421.jpg');
    chapterImages.add('assets/images/one-piece-11874427.jpg');
    chapterImages.add('assets/images/one-piece-11874433.jpg');
    super.initState();
  }

  void _previousImage() {
    setState(() {
      pageIndex = pageIndex > 0 ? pageIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      pageIndex = pageIndex < chapterImages.length - 1 ? pageIndex + 1 : pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900], //Sets background color on chapter pages.
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: new Image.asset(chapterImages[pageIndex]
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Prev'),
                onPressed: _previousImage,
                elevation: 5.0,
                color: Colors.green,
              ),
              SizedBox(width: 10.0),
              RaisedButton(
                child: Text('Next'),
                onPressed: _nextImage,
                elevation: 5.0,
                color: Colors.blue,
              )
            ],
          )
        ],
      )
    );
  }
}