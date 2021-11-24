import 'dart:convert';

import 'package:flutter_project_3/model/api_response.dart';
import 'package:flutter_project_3/model/article.dart';
import 'package:http/http.dart' as http;

class NewsService {
  Future<APIResponse<Article>> getArticles() {
    var myHeaders = {
      'Content-Type': 'application/json',
      //'authorization': 'Bearer ' + token,
    };
    Uri apiURL = Uri.parse(
        'https://newsapi.org/v2/everything?q=tesla&apiKey=302172db63684fb19c778b77964d66fd');

    return http.get(apiURL, headers: myHeaders).then((data) {
      //print(data.body);

      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);
        // print(jsonData);
        Article article = Article();
        article.title = jsonData['articles'][0]['title'];
        article.urlToImage = jsonData['articles'][0]['urlToImage'];
        article.author = jsonData['articles'][0]['author'];
        article.content = jsonData['articles'][0]['content'];
        article.description = jsonData['articles'][0]['description'];
        article.url = jsonData['articles'][0]['url'];
        article.sourceId = jsonData['articles'][0]['source']['id'];
        article.sourceName = jsonData['articles'][0]['source']['name'];
        article.publishedAt = jsonData['articles'][0]['publishedAt'];

        print(jsonData['articles'][0]['title']);

        return APIResponse<Article>(
          data: article,
        );
      }

      return APIResponse<Article>(
        error: true,
        errorMessage: 'An error occured',
      );
    }).catchError((_) => APIResponse<Article>(
          error: true,
          errorMessage: 'An error occured',
        ));
  }
}
