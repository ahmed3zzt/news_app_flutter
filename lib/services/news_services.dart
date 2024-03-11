import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getNews(
      {required String category, required String lang}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=${category}&language=${lang}&sortBy=publishedAt&apiKey=1e20b06bfc9341daac260e51be188786');
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          description: article['description'],
          url: article['url'],
        );
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      throw Exception("Error in getNews : $e");
    }
  }
}
