import 'package:flutter/material.dart';
import 'package:flutter_project_3/model/api_response.dart';
import 'package:flutter_project_3/model/article.dart';
import 'package:flutter_project_3/services/news_service.dart';
import 'package:get_it/get_it.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _isLoading = false;
  APIResponse<Article> _apiResponse = APIResponse<Article>();
  NewsService get newsService => GetIt.I<NewsService>();
  Article article = Article();

  Future<void> getNews() async {
    // fetch all the data from different api's
    setState(() {
      _isLoading = true;
    });

    _apiResponse = await newsService.getArticles();

    article = _apiResponse.data!;

    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Flutter News",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Stack(children: [
          Container(
            padding: EdgeInsets.all(18),
            child: Column(
              children: [
                article.urlToImage == null
                    ? Container()
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: NetworkImage(article.urlToImage!),
                        ),
                      ),
                Container(
                  height: 12,
                ),
                Text(
                  article.title == null ? "" : article.title!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Container(
                  height: 8,
                ),
                Text(
                  article.description == null ? "" : article.description!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
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
