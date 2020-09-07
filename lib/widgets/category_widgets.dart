////import 'package:flutter/material.dart';
////import 'package:islamico/model/genre.dart';
////import 'package:islamico/style/theme.dart' as Style;
////
////import 'news_list_widgets.dart';
////
////
////class CategoryList extends StatefulWidget {
////  final List<Genre> genres;
////
////  CategoryList({Key key, @required this.genres}) : super(key: key);
////
////  @override
////  _CategoryListState createState() => _CategoryListState(genres);
////}
////
////class _CategoryListState extends State<CategoryList>
////    with SingleTickerProviderStateMixin {
////  final List<Category> category;
////  TabController _tabController;
////
////  _CategoryListState(this.category);
////
////  @override
////  void initState() {
////    _tabController = TabController(vsync: this, length: category.length);
////  }
////
////  @override
////  void dispose() {
////    super.dispose();
////    _tabController.dispose;
////  }
////
////  @override
////  Widget build(BuildContext context) {
////    return Container(
////      height: 307,
////      child: DefaultTabController(
////          length: category.length,
////          child: Scaffold(
////            backgroundColor: Style.Colors.mainColor,
////            appBar: PreferredSize(
////                child: AppBar(
////                  backgroundColor: Style.Colors.mainColor,
////                  bottom: TabBar(
////                    controller: _tabController,
////                    indicatorColor: Style.Colors.secondColor,
////                    indicatorSize: TabBarIndicatorSize.tab,
////                    indicatorWeight: 3.0,
////                    unselectedLabelColor: Style.Colors.titleColor,
////                    labelColor: Colors.white,
////                    isScrollable: true,
////                    tabs: category.map((Category category) {
////                      return Container(
////                        padding: EdgeInsets.only(bottom: 15.0, top: 10.0),
////                        child: Text(category.name.toUpperCase(), style: TextStyle(
////                          fontSize: 14.0,
////                          fontWeight: FontWeight.bold,
////
////                        ),),
////                      );
////                    }).toList(),
////                  ),
////                ),
////                preferredSize: Size.fromHeight(50.0)),
////            body: TabBarView(
//////              controller: _tabController,
//////              physics: NeverScrollableScrollPhysics(),
//////              children:  category.map((Category category) {
//////                return GenreMovies(genreId: category.id);
//////              }).toList(),
////            ),
////          )),
////    );
////  }
////}
//
////import 'package:eva_icons_flutter/eva_icons_flutter.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';
////import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:islamico/bloc/get_now_playing_bloc.dart';
//import 'package:islamico/bloc/news_bloc.dart';
//import 'package:islamico/model/models.dart';
////import 'package:islamico/model/movie.dart';
////import 'package:islamico/model/movie_response.dart';
////import 'package:page_indicator/page_indicator.dart';
//import 'package:islamico/style/theme.dart' as Style;
//import 'package:pull_to_refresh/pull_to_refresh.dart';
//
//class CategoryWidgets extends StatefulWidget {
//  @override
//  _CategoryWidgetsState createState() => _CategoryWidgetsState();
//}
//
//class _CategoryWidgetsState extends State<CategoryWidgets> {
//  @override
//  void initState() {
//    super.initState();
//  }
//
////  @override
////  void initState() {
////   _tabController = TabController(vsync: this, length: category.length);
//// }
////
//// @override
//// void dispose() {
////   super.dispose();
////  _tabController.dispose;
//// }
//  @override
//  Widget build(BuildContext context) {
//    MediaQueryData queryData;
//    queryData = MediaQuery.of(context);
//
////    print("helo");
////    print(news);
//    return Container(
//      margin: EdgeInsets.symmetric(horizontal: queryData.size.height * .010),
//      height: 620,
//
//      child: BlocBuilder<NewsBloc, NewsState>(builder: (_, newsState) {
//
//        if (newsState is NewsLoaded) {
//          List<News> news = newsState.news;
//
//          print('newsnya bisa lho');
//          print(news);
//
////              .sublist((newsState.news.length - 3), newsState.news.length);
//          return Container(
//          height: 307,
//               child: DefaultTabController(
//          length: news.length,
//          child: Scaffold(
//            backgroundColor: Style.Colors.mainColor,
//            appBar: PreferredSize(
//                child: AppBar(
//                  backgroundColor: Style.Colors.mainColor,
//                  bottom: TabBar(
////                    controller: _tabController,
//                    indicatorColor: Style.Colors.secondColor,
//                    indicatorSize: TabBarIndicatorSize.tab,
//                    indicatorWeight: 3.0,
//                    unselectedLabelColor: Style.Colors.titleColor,
//                    labelColor: Colors.white,
//                    isScrollable: true,
//                    tabs: news.map((News category)
//                    {
//                      return Container(
//                        padding: EdgeInsets.only(bottom: 15.0, top: 10.0),
//                        child: Text(category.categories.toUpperCase(), style: TextStyle(
//                          fontSize: 14.0,
//                          fontWeight: FontWeight.bold,
//
//                        ),),
//                      );
//                    }).toList(),
//                  ),
//                ),
//                preferredSize: Size.fromHeight(50.0)),
//            body: TabBarView(
////              controller: _tabController,
////              physics: NeverScrollableScrollPhysics(),
////              children:  category.map((Category category) {
////                return GenreMovies(genreId: category.id);
////              }).toList(),
//            ),
//          )),
//    );
//        } else {
//          return SpinKitFadingCircle(
//            color: Style.Colors.mainColor,
//            size: queryData.size.width * .5,
//          );
//        }
//      }),
//    );
//  }
//}
