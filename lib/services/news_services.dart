part of 'services.dart';

class NewsServices {
  static Future<List<News>> getNewsAll({http.Client client}) async {
    print('masuk fungsi fetch');
    String url = "https://islami.co/wp-json/wp/v2/posts";

    client ??= http.Client();

    var res = await client.get(url);
    if (res.statusCode != 200) {
      print('error pasti');
      return [];

    }
    var data = json.decode(res.body);
    List result = data;
     print(result);

    return result.map((e) => News.fromJson(e)).toList();
  }

//  static Future<NewsDetail> getDetail(News news, {http.Client client}) async {
//    String url = apiNewsDetail + news.id.toString();
//
//    client ??= http.Client();
//
//    var res = await client.get(url);
//
//    Map<String, dynamic> data = json.decode(res.body);
//
//    return NewsDetail.fromJson(data);
//    // return NewsDetail(
//    //   data: NewsDetail.fromJson(data).data,
//    //   additionalData: NewsDetail.fromJson(data).additionalData,
//    //   currentPage: NewsDetail.fromJson(data).currentPage,
//    //   message: NewsDetail.fromJson(data).message,
//    //   totalPage: NewsDetail.fromJson(data).totalPage,
//    // );
//    // return NewsDetail(
//    //     news: news,
//    //     additionalData: data['additional_data'],
//    //     currentPage: data['current_page'],
//    //     data: data['data'],
//    //     message: data['message'],
//    //     totalPage: data['total_page']);
//  }
}
