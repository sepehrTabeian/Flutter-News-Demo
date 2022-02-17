import 'package:flutter/material.dart';
import 'package:sample/utility/values.dart';

class FailureWidget extends StatelessWidget {
  final String? message;
  const FailureWidget({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message ?? errorTitle),);
  }
}
