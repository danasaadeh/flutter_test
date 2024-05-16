import 'package:flutter/material.dart';
import 'package:test2/pages/on_boarding.dart';
import 'package:test2/widgets/custom_scaffold.dart';

class SplashPage extends StatelessWidget {
  static String id = "splash";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => (HomePage())));
      },
      child: const CustomScaffold(
        imagePath: "images/pic20.jpg",
        child: Text(" "),
      ),
    );
  }
}
