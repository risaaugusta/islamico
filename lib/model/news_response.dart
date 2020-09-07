import 'package:islamico/model/models.dart';

class NewsResponse {
  final List<News> news;
  final String error;

  NewsResponse(this.error,this.news);

  NewsResponse.fromJson (Map<String, dynamic> json )
      : news =
  (json["news"] as List).map((i) => new News.fromJson(i)).toList(),
        error = "";

  NewsResponse.withError(String errorValue)
      : news = List(),
        error = errorValue;
}