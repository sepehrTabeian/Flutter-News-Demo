import 'package:sample/data/NewsModel.dart';

abstract class NewsState{}
class InitialNews extends NewsState{}
class LoadingNews extends NewsState{}
class LoadedNews extends NewsState{
  final NewsModel newsModel;

  LoadedNews({required this.newsModel});
}
class FailedNews extends NewsState{
  final String message;

  FailedNews({required this.message});
}