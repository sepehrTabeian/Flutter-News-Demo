
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
        super(InitialNews()){
    on<FetchNews>(
        _fetchNews
    );
  }
 Future<void> _fetchNews(FetchNews event  , Emitter<NewsState> emit) async {
   emit(LoadingNews());
   try {
     NewsModel newsModel = await _repository.getNews();
     emit(LoadedNews(newsModel: newsModel));

   }catch(e){
     emit(FailedNews(message: errorTitle));

   }
 }
}
