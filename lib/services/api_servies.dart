import 'package:app/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class News {

  List<Article> news  = [];

  static const String _apiEndpoint =
      'https://us-central1-thebasics-2f123.cloudfunctions.net/thebasics';

  Future<void> getNews(String apiKey , String category , int pageSize) async{

    var response = await http.get('https://us-central1-thebasics-2f123.cloudfunctions.net/thebasics/courseEpisodes');
    print(json.decode(response.body));

    var jsonData = jsonDecode(response.body);

    if(response.statusCode == 200){

      jsonData.forEach((element){

        if(element['imageUrl'] != null && element['title'] != null){
          Article article = Article(
            title: element['title'],
            imageUrl: element['imageUrl'],
            duration: element["duration"],
          );
          news.add(article);
        }
      });
    }
  }


}