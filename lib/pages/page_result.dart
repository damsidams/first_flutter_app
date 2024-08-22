import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ormaes/pages/model/search_state.dart';
import 'package:html/parser.dart';

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
          child: Container(
            height: 670,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Results of \"$query\" Query:", style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 20),
                  Expanded(
                    child: BlocBuilder<SearchBloc, SearchState>(
                        builder: (context, state) => SingleChildScrollView(
                            child: Container(
                                height: MediaQuery.of(context).size.height,
                                child:
                                Text(state.content.toString()))
                        )
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    child: const Text('Go Back'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ]),
          )
        ));
  }
}
