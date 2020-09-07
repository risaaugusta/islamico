import 'package:islamico/model/news_response.dart';
import 'package:islamico/respository/repository.dart';
import 'package:rxdart/rxdart.dart';

class NewsListBloc{
  final NewsRepository _repository = NewsRepository();
  final BehaviorSubject<NewsResponse> _subject = BehaviorSubject<NewsResponse>();

  getNews() async {
    NewsResponse response = await _repository.getNews();

    _subject.sink.add(response);
  }

  dispose() async{
    _subject.close();
  }

  BehaviorSubject<NewsResponse> get subject => _subject ;
}

final nowPlayingMoviesBloc = NewsListBloc();