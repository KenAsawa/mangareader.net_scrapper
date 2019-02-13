import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';

class HtmlScraper {
  Future initiate() async {
    //Future<List<String>> initiate(int chapterNumber) async {
    var client = Client();
    String url = 'https://www.mangareader.net/one-piece/932/15';
    Response response = await client.get(url);

    if (response.statusCode != 200) {
      print(response.body);
      return ["ERROR"];
    }

    List<String> chapter = [];
    // Use html parser
    var document = parse(response.body);
    Element img = document.getElementById("img");
    chapter.add(img.attributes["src"]);
    print(img.attributes["src"]);
    return chapter;
  }
}
