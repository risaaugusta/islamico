part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToLoginPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToSplashPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToMainPage extends PageEvent {
  final int pageIndex;
  final String pageName;

  GoToMainPage({this.pageIndex = 0, this.pageName = "Berita"});
  @override
  List<Object> get props => [pageIndex];
}

class GoToBeritaPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToDoaPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToTahlilPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToNewsDetailPage extends PageEvent {
  final News news;

  GoToNewsDetailPage(this.news);

  @override
  List<Object> get props => [news];
}

class GoToQuranPage extends PageEvent {
  @override
  List<Object> get props => [];
}

