import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newyork_times_api_app/articles/article_model.dart';

class APIService {
  final String _baseUrl = 'api.nytimes.com';
  static const String API_KEY = '3BqW3b5WArNqHaw7My7GBmGhUqP2uZwN';

  Future<List<Article>> fetch(String section) async {
    Map<String, String> parameters = {
      'api-key': API_KEY,
    };
    Uri url = Uri.https(
      _baserUrl,
      '/svc/topstories/v2/$section.json',
      parameters,
    );
  
    try{
      var response=await.http.get(url);
      Map<String,dynamic>data=json.decode(response.body);
      List<Article>articles=[];
      date['results'].forEach(
        (articleMap)=> articles.add(Article.fromMap(articleMap)),
      );
      return articles;
    }catch(err){
      throw err.toString();
    }
    }
  }
}
