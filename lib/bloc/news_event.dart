import 'package:equatable/equatable.dart';

abstract class NewsEvent extends Equatable{}
class FetchNews extends NewsEvent{
  @override
  List<Object?> get props => [];
}