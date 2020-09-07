//import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamico/bloc/get_now_playing_bloc.dart';
import 'package:islamico/bloc/news_bloc.dart';
import 'package:islamico/model/models.dart';
//import 'package:islamico/model/movie.dart';
//import 'package:islamico/model/movie_response.dart';
//import 'package:page_indicator/page_indicator.dart';
import 'package:islamico/style/theme.dart' as Style;
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NewsWidgets extends StatefulWidget {
  @override
  _NewsWidgetsState createState() => _NewsWidgetsState();
}

class _NewsWidgetsState extends State<NewsWidgets> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

//    print("helo");
//    print(news);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: queryData.size.height * .010),
      height: 220,
      child: BlocBuilder<NewsBloc, NewsState>(builder: (_, newsState) {

        if (newsState is NewsLoaded) {
          List<News> news = newsState.news;

          print('newsnya bisa');
          print(news);

//              .sublist((newsState.news.length - 3), newsState.news.length);
          return ListView.builder(

              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 400,
                  child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: news.take(5).length,
                      itemBuilder: (context, index) {
//                      print(news[index]);
                        return Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 220,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
//                                    image: NetworkImage("https://themoviedb.org/movie/now-playing" + movies[index].backPoster)
                                      image: NetworkImage(
                                          "https://islami.co/wp-content/uploads/2020/08/1525325_188523284682270_1490237721_n-768x681.jpg"))),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Style.Colors.mainColor.withOpacity(1.0),
                                      Style.Colors.mainColor.withOpacity(0.0),
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    stops: [0.0, 0.9]),
                              ),
                            ),
                            Positioned(
                                bottom: 30,
                                child: Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  width: 250,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        news[index].title,
                                        style: TextStyle(
                                            height: 1.5,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    ],
                                  ),
                                )),


                          ],
                        );
                      }),
                );
//                return CardComponents(
//                  horizontal: true,
//                  title: news[index].title,
//                  date: news[index].publishDateText,
//                  image: NetworkImage(
//                    news[index].picture['16_9'].thumb.toString(),
//                  ),
//                  newsData: news[index],
//                );
              });
        } else {
          return SpinKitFadingCircle(
            color: Style.Colors.mainColor,
            size: queryData.size.width * .5,
          );
        }
      }),
    );
  }
}

//
//  @override
//  Widget build(BuildContext context) {
//
//
//    MediaQueryData queryData;
//    queryData = MediaQuery.of(context);
//
//    return Container(
//        margin: EdgeInsets.symmetric(vertical: queryData.size.height * .010),
//        child: BlocBuilder<NewsBloc, NewsState>(builder: (_, newsState) {
//          if (newsState is NewsLoaded) {
//            News data = newsState.news;
//            return SmartRefresher(
//              enablePullDown: true,
//              enablePullUp: false,
//              header: WaterDropMaterialHeader(
//                color: Colors.white,
//                backgroundColor: Style.Colors.mainColor,
//              ),
//
//              child: ListView.builder(
//                  scrollDirection: Axis.vertical,
//                  itemCount: data.data.take(5).length,
//                  itemBuilder: (_, index) {
//                    // return print(listQuran[index].toJson());
//                    // return Text(listQuran[index].nameLatin);
//                    return TahlilCards(
//                      data: data.data[index],
//                      index: index,
//                    );
//                  }),
//            );
//          } else {
//            return SpinKitFadingCircle(
//              color: Style.Colors.mainColor,
//              size: queryData.size.width * .5,
//            );
//          }
//        }));
//  }
//}
//
//class TahlilCards extends StatelessWidget {
//  final DataNews data;
//  final int index;
//
//  TahlilCards({this.data, this.index});
//
//  @override
//  // ignore: missing_return
//  Widget build(BuildContext context) {
//    return ExpansionTile(
//      leading: Container(
//        width: SizeConfig.safeBlockHorizontal * 10,
//        height: SizeConfig.safeBlockHorizontal * 10,
//        decoration: BoxDecoration(
//          color: Hexcolor("#038175"),
//          borderRadius: BorderRadius.all(Radius.circular(10.0)),
//        ),
//        child: Padding(
//          padding: EdgeInsets.fromLTRB(
//              SizeConfig.safeBlockHorizontal * 3.5,
//              SizeConfig.safeBlockHorizontal * 2.5,
//              SizeConfig.safeBlockHorizontal * 0,
//              SizeConfig.safeBlockHorizontal * 0),
//          child: Text(
//            (index + 1).toString(),
//            overflow: TextOverflow.ellipsis,
//            style: GoogleFonts.roboto().copyWith(
//              color: Colors.white,
//              fontSize: 15,
//              fontWeight: FontWeight.normal,
//            ),
//          ),
//        ),
//      ),
//      title: Wrap(
//        crossAxisAlignment: WrapCrossAlignment.end,
//        alignment: WrapAlignment.end,
//        children: [
//          Html(
//            style: {
//              "p": Style(
//                  fontFamily: ArabicFonts.Scheherazade,
//                  fontSize: FontSize(SizeConfig.safeBlockHorizontal * 6),
//                  color: Hexcolor("#038175"),
//                  textAlign: TextAlign.right),
//            },
//            data: data.arabText,
//            // linkStyle: TextStyle(
//            //     fontFamily: ArabicFonts.Scheherazade,
//            //     package: 'google_fonts_arabic',
//            //     fontSize: SizeConfig.safeBlockHorizontal * 8,
//            //     color: Hexcolor("#038175")),
//            // customTextAlign: (dom.Node node) {
//            //   if (node is dom.Element) {
//            //     switch (node.localName) {
//            //       case "p":
//            //         return TextAlign.right;
//            //     }
//            //   }
//            // },
//          ),
//        ],
//      ),
//      subtitle: Html(
//        style: {
//          "p": Style(
//              fontFamily: ArabicFonts.Scheherazade,
//              fontSize: FontSize(SizeConfig.safeBlockHorizontal * 4),
//              color: Colors.black,
//              textAlign: TextAlign.left),
//        },
//        data: data.indoText,
//        // linkStyle: TextStyle(
//        //   fontFamily: ArabicFonts.Scheherazade,
//        //   fontSize: SizeConfig.safeBlockHorizontal * 4,
//        //   color: Colors.black,
//        // ),
//        // customTextAlign: (dom.Node node) {
//        //   if (node is dom.Element) {
//        //     switch (node.localName) {
//        //       case "p":
//        //         return TextAlign.left;
//        //     }
//        //   }
//        // },
//      ),
//      trailing: Opacity(opacity: 0),
//    );
//  }
//}
