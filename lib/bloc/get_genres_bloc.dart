//import 'package:islamico/model/genre_response.dart';
//import 'package:islamico/respository/repository.dart';
//import 'package:rxdart/rxdart.dart';
//
//class GenresListBloc{
//  final MovieRepository _repository = MovieRepository();
//  final BehaviorSubject<GenreResponse> _subject = BehaviorSubject<GenreResponse>();
//
//  getGenres() async {
//    GenreResponse response = await _repository.getGenres();
//    _subject.sink.add(response);
//  }
//
//  dispose() async{
//    _subject.close();
//  }
//
//  BehaviorSubject<GenreResponse> get subject => _subject ;
//}
//
//final genresBloc = GenresListBloc();