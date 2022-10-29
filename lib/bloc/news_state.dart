import 'package:equatable/equatable.dart';
import 'package:sample/data/NewsModel.dart';

abstract class NewsState extends Equatable{
  @override
  List<Object?> get props => [];
}
class InitialNews extends NewsState{}
class LoadingNews extends NewsState{}
class LoadedNews extends NewsState{
  final NewsModel newsModel;

  LoadedNews({required this.newsModel});

  @override
  List<Object?> get props => [newsModel];

}
class FailedNews extends NewsState{
  final String message;

  FailedNews({required this.message});
  @override
  List<Object?> get props => [message];
}