import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/bloc/news_event.dart';
import 'package:sample/bloc/news_state.dart';
import 'package:sample/data/NewsModel.dart';
import 'package:sample/data/repository/news_repository.dart';
import 'package:sample/utility/values.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _repository;

  NewsBloc({required NewsRepository movieRepository})
      : _repository = movieRepository,
        super(InitialNews());


  @override
  Stream<NewsState> mapEventToState(NewsEvent event)async* {

    if(event is FetchNews){
      try{
        yield LoadingNews();
        NewsModel model= await _repository.getNews();
        yield LoadedNews(newsModel: model);

      }catch(e){
        yield FailedNews(message: errorTitle);
      }

    }
  }
}
