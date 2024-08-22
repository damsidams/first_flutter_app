import 'package:equatable/equatable.dart';

class SearchState extends Equatable{
  String? content;
  bool isLoading;

  SearchState({this.content, this.isLoading = false});
  factory SearchState.initial() => SearchState();

  copyWith({String? newContent, bool? newIsLoading}){
    return SearchState(
      content: newContent ?? content,
      isLoading: newIsLoading ?? isLoading,
    );
  }

  @override
  List<Object?> get props => [content, isLoading];
}