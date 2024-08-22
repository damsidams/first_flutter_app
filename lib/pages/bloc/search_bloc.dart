import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'search_event.dart';
import '../model/search_state.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;


class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({SearchState? searchState})
      : super(searchState ?? SearchState.initial()) {
    on<SearchEventFetch>(_onSearchEventFetch);
  }

  Future<void> _onSearchEventFetch(SearchEventFetch event, Emitter<SearchState> emit) async {
    var url = "https://google.com/search?q=";
    url = url + event.query;

    final Uri request = Uri(scheme: 'https', host: url, path: 'headers/');

    Response response = await http.get(request);
    emit(state.copyWith(newContent: response.body));
  }
}
