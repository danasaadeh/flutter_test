import 'package:flutter/material.dart';
import 'package:test2/pages/explore.dart';
import 'package:test2/pages/my_cart.dart';
import 'package:test2/pages/order_accepted.dart';
import 'package:test2/widgets/bott_nav_bar.dart';
import 'package:test2/widgets/custom_scaffold.dart';

class HomePage extends StatelessWidget {
  static String id = "home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(
        imagePath: "images/pic3.jpeg",
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 370,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 3,
                    color: Colors.white),
              ),
              const Text(
                "to our store",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2,
                    color: Colors.white),
              ),
              const Text(
                "Get your groceries in as fast as one houre ",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                  width: 300,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => (NavigatorBar())));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 83, 177, 117)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ))),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
