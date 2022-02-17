import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sample/bloc/news_bloc.dart';
import 'package:sample/data/repository/move_repository.dart';

final locator = GetIt.instance;

void setup() {
  ///singleton
  locator.registerSingleton<Dio>(Dio());
  locator.registerSingleton(NewsRepository());

  ///factory
  locator.registerFactory<NewsBloc>(() => NewsBloc(movieRepository: locator<NewsRepository>()));

}