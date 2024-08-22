import 'package:equatable/equatable.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class SearchEventFetch extends SearchEvent {
  final String query;
  const SearchEventFetch(this.query);

  @override
  List<Object> get props => [];
}
