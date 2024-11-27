import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  final dio = Dio();
  final String category;
  NewsService({required this.category});
  Future<List<NewsModel>> getNews() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=36040f3dcd6543cf9ebf9fce8a14967a&country=us&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsModel> articelsList = [];
      for (var article in articles) {
        NewsModel newsModel = NewsModel.fromJson(article);
        articelsList.add(newsModel);
      }

      return articelsList;
    } catch (e) {
      return [];
    }
  }
}
