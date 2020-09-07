import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:islamico/model/models.dart';
import 'package:islamico/model/news_response.dart';


class NewsRepository{
//  final String apiKey = "34e0ac24a9e9e5dfc7ae8867c7233e8b";

  static String  mainUrl ="https://islami.co/wp-json/wp/v2/posts";
  final Dio _dio = Dio();
  var getPopularUrl = '$mainUrl/movie/top_rated';
  var getMoviesUrl = '$mainUrl/dicover/movie';
  var getPlayingUrl = '$mainUrl/movie/now_playing';
  var getGenresUrl = '$mainUrl/genre/movie/list';
  var getNewsUrl = 'https://islami.co/wp-json/wp/v2/posts';

  Future<NewsResponse> getNews()async {
    var params = {
//      "api_key" : apiKey,
//      "language" : "en-US",
      "page" : 1
    };

    try{
      Response response = await _dio.get(getNewsUrl, queryParameters: params);
//      print("hello");
//      print(response);
          return NewsResponse.fromJson(response.data);
    } catch (error, stacktrace){
      print("Exception occured : $error stackTrace: $stacktrace");
      return NewsResponse.withError("$error");
    }
  }

//  Future<MovieResponse> getPlayingMovies()async {
//    var params = {
//      "api_key" : apiKey,
//      "language" : "en-US",
//      "page" : 1
//    };
//
//
//    try{
//      Response response = await _dio.get(getPlayingUrl, queryParameters: params);
//      print(response.data);
//      return MovieResponse.fromJson(response.data);
//    } catch (error, stacktrace){
//      print("Exception occured : $error stackTrace: $stacktrace");
//      return MovieResponse.withError("$error");
//    }
//  }
//
//  Future<GenreResponse> getGenres()async {
//    var params = {
//      "api_key" : apiKey,
//      "language" : "en-US",
//      "page" : 1
//    };
//
//    try{
//      Response response = await _dio.get(getGenresUrl, queryParameters: params);
//      return GenreResponse.fromJson(response.data);
//    } catch (error, stacktrace){
//      print("Exception occured : $error stackTrace: $stacktrace");
//      return GenreResponse.withError("$error");
//    }
//  }
//
//
//
//  Future<MovieResponse> getMoviesByGenre(int id)async {
//    var params = {
//      "api_key" : apiKey,
//      "language" : "en-US",
//      "page" : 1,
//      "with_genres" : id
//    };
//
//    try{
//      Response response = await _dio.get(getMoviesUrl, queryParameters: params);
//      return MovieResponse.fromJson(response.data);
//    } catch (error, stacktrace){
//      print("Exception occured : $error stackTrace: $stacktrace");
//      return MovieResponse.withError("$error");
//    }
//  }





}