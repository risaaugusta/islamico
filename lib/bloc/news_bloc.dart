import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:islamico/model/models.dart';
import 'package:islamico/services/services.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
//  NewsBloc() : super(NewsInitial());
  NewsState get initialState => NewsInitial();
  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    if (event is FetchNews) {
      print('fetching news');
//      News news = await NewsServices.getNewsAll();
      List<News> news = await NewsServices.getNewsAll();
      print(news.toString());
      yield NewsLoaded(news: news);
    }
  }
}
