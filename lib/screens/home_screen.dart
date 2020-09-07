import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:islamico/style/theme.dart' as Style;
import 'package:islamico/widgets/category_widgets.dart';
import 'package:islamico/widgets/genres.dart';
import 'package:islamico/widgets/news_widget.dart';
import 'package:islamico/widgets/news_list_widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.mainColor,
        centerTitle: true,
        leading: Icon(EvaIcons.menu2Outline, color: Colors.white,),
        title:  Image.asset('assets/logo.PNG',
            height: 35,
            fit: BoxFit.cover),
        actions: <Widget>[
          IconButton(icon: Icon(EvaIcons.searchOutline, color: Colors.white,), onPressed: null,)
        ],
      ),

      body: ListView(
        children: <Widget>[
          NewsWidgets(),
          NewsListWidgets(),

//          CategoryWidgets(),
//          GenresScreen(),
        ],
      )
    );
  }
}
