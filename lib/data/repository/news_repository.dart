import 'package:sample/data/NewsModel.dart';
import 'package:sample/data/provider/news_provider.dart';

abstract class INewsRepository{
  Future<NewsModel> getNews();
}
class NewsRepository extends INewsRepository{
  final NewsProvider _newsProvider=NewsProvider();
  @override
  Future<NewsModel> getNews() {
    try{
      return _newsProvider.getNews();

    }catch(e){
      throw e.toString();
    }
  }

}