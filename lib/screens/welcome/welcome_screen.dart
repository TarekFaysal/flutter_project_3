import 'package:flutter/material.dart';
import 'package:flutter_project_3/model/api_response.dart';
import 'package:flutter_project_3/model/article.dart';
import 'package:flutter_project_3/services/news_service.dart';
import 'package:get_it/get_it.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _isLoading = false;
  APIResponse<Article> _apiResponse = APIResponse<Article>();
  NewsService get newsService => GetIt.I<NewsService>();
  Article article = Article();

  Future<Article> getNews() async {
    // fetch all the data from different api's
    setState(() {
      _isLoading = true;
    });

    _apiResponse = await newsService.getArticles();

    setState(() {
      _isLoading = false;
    });
    return _apiResponse.data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Stack(children: [
          Text(article.title == null ? "Before Api call" : article.title),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              child: Text("Get data"),
              onPressed: () async {
                article = await getNews();
              },
            ),
          ),
          _isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ),
                )
              : Container()
        ]));
  }
}
