import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ormaes/pages/model/search_state.dart';

import 'bloc/search_bloc.dart';
import 'bloc/search_event.dart';

class PageResults extends StatelessWidget {
  String query;

  PageResults({super.key, required this.query});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Results'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              child: const Text('Go Back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Text(query),
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) =>
                  Container(
                      child:
                      Text(state.content.toString()),

                  ),
            )
          ]),
        ));
  }
}
