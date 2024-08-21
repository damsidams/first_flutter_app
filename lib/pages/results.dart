import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bloc/bloc.dart';

class PageResults extends StatelessWidget {
  String query;
  PageResults({super.key, required this.query});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ ElevatedButton(
            child: const Text('Go Back'),
            onPressed: () {
              Navigator.pop(context);
              // Navigate to second route when tapped.
            },
          ),
            Text(query)
        ]),
      ),
    );
  }
}
