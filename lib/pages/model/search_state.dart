import 'package:equatable/equatable.dart';

class SearchState extends Equatable{
  String? content;

  SearchState({this.content});
  factory SearchState.initial() => SearchState();

  copyWith({String? newContent}){
    return SearchState(
      content: newContent ?? content,
    );
  }

  @override
  List<Object?> get props => [content];
}