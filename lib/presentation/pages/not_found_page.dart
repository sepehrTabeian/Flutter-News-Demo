import 'package:flutter/material.dart';
import 'package:sample/utility/values.dart';

class NotFoundPage extends StatefulWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  _NotFoundPageState createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(notFoundTitle),
      ),
      body:  const Center(
        child:  Text(notFoundDesTitle),
      ),
    );
  }
}
