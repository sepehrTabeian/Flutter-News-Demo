import 'package:flutter/material.dart';
import 'package:sample/utility/routing/rotute_genarator.dart';
import 'package:sample/utility/routing/route_names.dart';
import 'package:sample/utility/values.dart';
import 'data/services/init_dio.dart';
import 'data/services/service_locatior.dart';

void main() {
  setup();
  initDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SampleRouted.homeScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

