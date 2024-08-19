import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BreakFast",
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
      ),
    );
  }
}
