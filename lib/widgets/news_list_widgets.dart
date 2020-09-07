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

class NewsListWidgets extends StatefulWidget {
  @override
  _NewsListWidgetsState createState() => _NewsListWidgetsState();
}

class _NewsListWidgetsState extends State<NewsListWidgets> {
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
      height: 620,

      child: BlocBuilder<NewsBloc, NewsState>(builder: (_, newsState) {

        if (newsState is NewsLoaded) {
          List<News> news = newsState.news;

          print('newsnya bisa lho');
          print(news);

//              .sublist((newsState.news.length - 3), newsState.news.length);
          return ListView.builder(

              scrollDirection: Axis.vertical,
              itemCount: news.length,
              itemBuilder: (context, index) {
                return Flexible(
                  child: SizedBox(
                  width: 300,
//                  child: PageView.builder(
//                      scrollDirection: Axis.vertical,
//                      itemCount: news.length,
//                      itemBuilder: (context, index) {
////                      print(news[index]);
//                        return Stack(
//                          children: [
//
//                            Positioned(
//                                bottom: 30,
//                                child: Container(
//                                  padding: EdgeInsets.only(left: 10, right: 10),
//                                  width: 550,
//                                  child: Column(
//                                    crossAxisAlignment: CrossAxisAlignment.start,
//                                    children: <Widget>[
//                                      Text(
//                                        news[index].title,
//                                        style: TextStyle(
//                                            height: 1.5,
//                                            color: Style.Colors.secondColor,
//                                            fontWeight: FontWeight.bold,
//                                            fontSize: 14),
//                                      ),
//                                      SizedBox(
//                                        height: 10,
//                                      ),
//                                      Text(
//                                        news[index].content,
//                                        style: TextStyle(
//                                            height: 1,
//                                            color: Colors.white,
//                                            fontSize: 12),
//                                      )
//                                    ],
//                                  ),
//                                )),
//
//
//                          ],
//                        );
//                      }),
//                );
                  child: Container(
                    height: 200,
                    child: ListTile(

                      title: Text(
                        news[index].title,
                                            style: TextStyle(
                                                height: 1.5,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                          ),
                      subtitle: Text(

                        news[index].content,
                          maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Color(0xffCF7D7D),
//                            color: Style.Colors.titleColor,
                            fontSize: 12),
                      ),
                      leading: Image(

                        fit: BoxFit.cover,
                        image: NetworkImage(

                            "https://islami.co/wp-content/uploads/2020/01/IMG-20200130-WA0022-300x199.jpg"),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.chevron_right, color: Color(0xffCF7D7D)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
//                            builder: (context) => AdminDetailPage(index),
                              ));
                        },
                      ),
                    ),
                  )),
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
 