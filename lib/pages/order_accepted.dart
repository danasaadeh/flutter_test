import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test2/pages/explore.dart';

class OrderAccept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 220,
          ),
          Center(
            child: Image.asset(
              "images/pic17.png",
              height: 200,
              width: 380,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          const Text(
            "Accepted",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              letterSpacing: 2,
            ),
          ),
          const Text(
            "Your items has been placced and is on ",
            style: TextStyle(fontSize: 16),
          ),
          const Text(
            "its way to being processed  ",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
              width: 400,
              height: 100,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 83, 177, 117)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ))),
                    child: const Text(
                      "Track Order",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => (ExplorePage())));
                      },
                      child: Text(
                        "Back To Home",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
