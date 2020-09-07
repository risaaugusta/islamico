////import 'dart:js';
//
//import 'package:eva_icons_flutter/eva_icons_flutter.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//import 'package:islamico/bloc/get_movies_byGenre_bloc.dart';
//import 'package:islamico/model/movie.dart';
//import 'package:islamico/model/movie_response.dart';
//import 'package:islamico/style/theme.dart' as Style;
//
//
//class GenreMovies extends StatefulWidget {
//  final int genreId;
//
//  GenreMovies({Key key, this.genreId})
//      : super(key: key);
//
//  @override
//  _GenreMoviesState createState() => _GenreMoviesState(genreId);
//}
//
//class _GenreMoviesState extends State<GenreMovies> {
//  final int genreId;
//
//  _GenreMoviesState(this.genreId);
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    moviesByGenreBloc..getMoviesByGenre(genreId);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return StreamBuilder<MovieResponse>(
//      stream: moviesByGenreBloc.subject.stream,
//      builder: (context, AsyncSnapshot<MovieResponse> snapshot) {
//        if (snapshot.hasData) {
////          print(snapshot.data);
//          if (snapshot.data.error != null && snapshot.data.error.length > 0) {
//            return _buildErrorWidget(snapshot.error);
//          }
//          return _buildMoviesByGenreWidget(snapshot.data);
//        } else if (snapshot.hasError) {
//          return _buildErrorWidget(snapshot.error);
//        } else {
//          return _buildLoadingWidget();
//        }
//      },
//    );
//  }
//
//  Widget _buildLoadingWidget() {
//    return Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            SizedBox(
//              height: 25.0,
//              width: 25.0,
//              child: CircularProgressIndicator(
//              ),
//            )
//          ],
//        )
//    );
//  }
//
//  Widget _buildErrorWidget(String error) {
//    return Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            SizedBox(
//              height: 25.0,
//              width: 25.0,
//              child: CircularProgressIndicator(
//              ),
//            )
//          ],
//        )
//    );
//  }
//}
//
//Widget _buildMoviesByGenreWidget(MovieResponse data) {
//  List<Movie> movies = data.movies;
//  if (movies.length == 0) {
//    return Container(
//      child: Text("no movies"),
//    );
//  } else
//    return ListView.builder(
//        itemCount: 20,
//        itemBuilder: (_, index)
//        {
//          return ListTile(
//            title: Text("Title of content $index",
//                style: TextStyle(
//                  fontSize: 15,
//                )),
//            subtitle: Row(
//              children: <Widget>[
//                Text("Description of content",
//                    style: TextStyle(
//                        fontSize: 15,
//                        color: Colors.grey))
//              ],
//            ),
//            leading: Image(
//              width: 70,
//              height: 70,
//              image: NetworkImage("https://islami.co/wp-content/uploads/2018/01/IMG_0454-e1575515821535-300x225.jpg"),
//            ),
//            trailing: IconButton(
//              icon: Icon(Icons.chevron_right, color: Colors.grey),
//              onPressed: () {
//
//              },
//            ),
//          );
//        }
//    );
//}
//
//
////ListView _buildListView(BuildContext context) {
////
////}
