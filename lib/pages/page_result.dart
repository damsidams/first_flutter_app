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
    return BlocProvider(
        create: (context) => SearchBloc(),

        child: Scaffold(
          appBar: AppBar(
            title: const Text('Results Route'),
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ ElevatedButton(
                  child: const Text('Go Back'),
                  onPressed: () {
                    BlocProvider.of<SearchBloc>(context).add(SearchEventFetch(query));
                    //Navigator.pop(context);
                    // Navigate to second route when tapped.
                  },
                ),
                  Text(query),
                  BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) =>
                        Container(
                            child:
                            Text(state.content.toString())
                        ),
                  )
                ]
            ),
          ),
        )
    );
  }
  }