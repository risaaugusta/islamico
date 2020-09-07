import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:islamico/model/models.dart';
part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
//  PageBloc() : super(OnInitialPage());

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
     if (event is GoToMainPage) {
      yield OnMainPage(pageIndex: event.pageIndex);
    } else if (event is GoToBeritaPage) {
      yield OnBeritaPage();
    } else if (event is GoToNewsDetailPage) {
      yield OnNewsDetailPage(event.news);
    }

  }

  @override
  // TODO: implement initialState
  PageState get initialState => throw UnimplementedError();
}
