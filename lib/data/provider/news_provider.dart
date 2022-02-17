import 'package:sample/data/provider/sample_api_provider.dart';
import 'package:sample/data/repository/news_repository.dart';
import 'package:dio/dio.dart';

import '../NewsModel.dart';

class NewsProvider extends INewsRepository{
  final SampleApiProvider _apiProvider=SampleApiProvider();

  @override
  Future<NewsModel> getNews() async{
    Map<String,dynamic> query={
     "fromCurrentTime":true
    };
    Response response=await _apiProvider.getAsyncData("/services/getgracenoteschedule", query);
    return NewsModel.fromJson(response.data);
  }

}