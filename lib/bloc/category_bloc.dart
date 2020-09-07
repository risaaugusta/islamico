//import 'dart:async';
//
//import 'package:bloc/bloc.dart';
//import 'package:equatable/equatable.dart';
//import 'package:flutter/foundation.dart';
//import 'package:islamico/model/models.dart';
//import 'package:islamico/services/services.dart';
//
//part 'category_event.dart';
//part 'category_state.dart';
//
//class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
////  NewsBloc() : super(NewsInitial());
//  CategoryState get initialState => NewsInitial();
//  @override
//  Stream<CategoryState> mapEventToState(
//      CategoryEvent event,
//      ) async* {
//    if (event is FetchCategory) {
//      print('fetching category');
////      News news = await NewsServices.getNewsAll();
//      List<Category> category = await CategoryServices.getCategoryAll();
//      print(category.toString());
//      yield CategoryLoaded(category: category);
//    }
//  }
//}
