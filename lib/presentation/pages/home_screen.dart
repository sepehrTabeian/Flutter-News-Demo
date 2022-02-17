import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/bloc/news_bloc.dart';
import 'package:sample/bloc/news_state.dart';
import 'package:sample/presentation/widget/failure_widget.dart';
import 'package:sample/presentation/widget/loading_widget.dart';
import 'package:sample/utility/values.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Widget _widget;
  @override
  void initState() {
    _widget=Container();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(homeTitle)),
      body: BlocBuilder<NewsBloc,NewsState>(
        builder: (BuildContext context, state) {
        if(state is LoadingNews){
           _widget= const LoadingWidget();
        }
        if( state is FailedNews){
          _widget=FailureWidget(message: state.message,);
        }
        if(state is LoadedNews ){
          _widget= ListView.builder(
            padding: const EdgeInsets.all(margin8),
              itemCount: state.newsModel.comingUp?.length??0,
              itemBuilder: (context,index){
                var news=state.newsModel.comingUp![index];

                return Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8),
                    title: Text(news.title??''),
                     subtitle: Text(news.description??'',softWrap: true,),
                  ),
                );

          });
        }

          return _widget;
        },

      ),
    );
  }
}
