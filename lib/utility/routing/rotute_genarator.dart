import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/bloc/news_bloc.dart';
import 'package:sample/bloc/news_event.dart';
import 'package:sample/data/services/service_locatior.dart';
import 'package:sample/presentation/pages/home_screen.dart';
import 'package:sample/presentation/pages/not_found_page.dart';
import 'package:sample/utility/routing/route_names.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SampleRouted.homeScreen :
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
              create: (context)=>locator<NewsBloc>()..add(FetchNews()),
              child: const  HomeScreen());
        });

      default :
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}