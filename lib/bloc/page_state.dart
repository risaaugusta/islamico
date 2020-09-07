part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();
}

class OnInitialPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnLoginPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnSplashPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnMainPage extends PageState {
  final int pageIndex;
  final String pageName;

  OnMainPage({this.pageIndex = 0, this.pageName = "Berita"});
  @override
  List<Object> get props => [pageIndex];
}

class OnBeritaPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnDoaPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnTahlilPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnNewsDetailPage extends PageState {
  final News news;

  OnNewsDetailPage(this.news);
  @override
  List<Object> get props => [news];
}

class OnQuranPage extends PageState {
  @override
  List<Object> get props => [];
}
