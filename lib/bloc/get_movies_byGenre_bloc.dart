//import 'package:flutter/cupertino.dart';
//import 'package:islamico/model/movie_response.dart';
//import 'package:islamico/respository/repository.dart';
//import 'package:rxdart/rxdart.dart';
//
//class MoviesListByGenreBloc{
//  final MovieRepository _repository = MovieRepository();
//  final BehaviorSubject<MovieResponse> _subject = BehaviorSubject<MovieResponse>();
//
//  getMoviesByGenre(int id) async {
//    MovieResponse response = await _repository.getMoviesByGenre(id);
//    _subject.sink.add(response);
//  }
//
//  void drainStream() {_subject.value = null;}
//  @mustCallSuper
//  void dispose() async {
//    await _subject.drain();
//    _subject.close();
//  }
//
//  BehaviorSubject<MovieResponse> get subject => _subject ;
//}
//
//final moviesByGenreBloc = MoviesListByGenreBloc();