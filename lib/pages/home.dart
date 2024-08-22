import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ormaes/pages/page_result.dart';

import 'bloc/search_bloc.dart';
import 'bloc/search_event.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final dataSave = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40,left: 20,right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff1D1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0,
                ),
              ]
            ),
            child: TextField(
              controller: dataSave,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(15),
                prefixIconConstraints: const BoxConstraints(minWidth: 30, maxHeight: 30),
                suffixIconConstraints: const BoxConstraints(minWidth: 30, maxHeight: 30),
                prefixIcon: IconButton(
                  onPressed: () {
                    BlocProvider.of<SearchBloc>(context).add(SearchEventFetch(dataSave.text));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageResults(query: dataSave.text))
                  );
                },
                  icon: SvgPicture.asset("assets/icons/search-5-svgrepo-com.svg"),
                ),
                suffixIcon: SvgPicture.asset("assets/icons/setting-4-svgrepo-com.svg"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

AppBar appBar() {
  return AppBar(
      title: const Text("OrmaSearch",
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icons/left-arrow-svgrepo-com.svg",
              height: 15,
              width: 15,
            ),
          )
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(15),
          ),
          margin: const EdgeInsets.only(right: 15),
          alignment: Alignment.center,
          child: SvgPicture.asset(
            "assets/icons/three-dots-svgrepo-com.svg",
            height: 20,
            width: 20,
          ),
        ),
      ]
  );
}
