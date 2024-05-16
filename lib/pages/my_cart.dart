import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test2/pages/order_accepted.dart';

class Cart extends StatefulWidget {
  @override
  _Cart createState() => _Cart();
}

class _Cart extends State<Cart> {
  List basketItems = [
    {
      "name": 'Bell Paper Rede',
      "image": 'images/pic4.png',
      "price": "4.99",
      "desc": "1kg,price",
    },
    {
      "name": 'Egg chicken red',
      "image": 'images/pic9.png',
      "price": "1.99",
      "desc": "4pcs,price",
    },
    {
      "name": 'organic Banana',
      "image": 'images/pic10.png',
      "price": "3.00",
      "desc": "12kg,price",
    },
    {
      "name": 'Ginger',
      "image": 'images/pic7.png',
      "price": "2.99",
      "desc": "250gm,price"
    },
    {
      "name": 'Bell Paper Rede',
      "image": 'images/pic4.png',
      "price": "4.99",
      "desc": "1kg,price",
    },
    {
      "name": 'Egg chicken red',
      "image": 'images/pic9.png',
      "price": "1.99",
      "desc": "4pcs,price",
    },
  ];

  Map<int, int> itemCounter = {}; // Map to store counters for each item
  int selectedindex = 0;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    // Initialize counters for each item with 1
    for (int i = 0; i < basketItems.length; i++) {
      itemCounter[i] = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "My Cart",
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: basketItems.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.5)),
                        child: ListTile(
                          leading: Image.asset(
                            basketItems[index]["image"],
                            width: 100,
                            height: 100,
                          ),
                          title: Text(
                            basketItems[index]["name"],
                            style: const TextStyle(fontSize: 18),
                          ),
                          subtitle: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${basketItems[index]["desc"]}',
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Color.fromARGB(255, 83, 177, 117),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (itemCounter[index]! > 1) {
                                          itemCounter[index] =
                                              itemCounter[index]! - 1;
                                        }
                                      });
                                    },
                                  ),
                                  Text(itemCounter[index].toString()),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.add,
                                      color: Color.fromARGB(255, 83, 177, 117),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        itemCounter[index] =
                                            itemCounter[index]! + 1;
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                          trailing: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.disabled_by_default_rounded),
                              SizedBox(height: 10),
                              Text(
                                '\$${basketItems[index]["price"]}',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 83, 177, 117),
                onPressed: () {
                  scaffoldKey.currentState!.showBottomSheet((context) =>
                      Container(
                        height: 500,
                        width: 500,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Checkout",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.disabled_by_default)
                                  ],
                                ),
                                Container(
                                  height: 70,
                                  child: Card(
                                      child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Delivery",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 160,
                                      ),
                                      Text("Select method"),
                                      Icon(Icons.arrow_forward_ios)
                                    ],
                                  )),
                                ),
                                Container(
                                  height: 70,
                                  child: Card(
                                      child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Payment",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 200,
                                      ),
                                      Image.asset(
                                        "images/pic21.png",
                                        width: 40,
                                      ),
                                      // Text("Select method"),
                                      Icon(Icons.arrow_forward_ios)
                                    ],
                                  )),
                                ),
                                Container(
                                  height: 70,
                                  child: Card(
                                      child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Promo Code",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 130,
                                      ),
                                      Text("Pick discount"),
                                      Icon(Icons.arrow_forward_ios)
                                    ],
                                  )),
                                ),
                                Container(
                                  height: 70,
                                  child: Card(
                                      child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Total Cost",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 190,
                                      ),
                                      Text(r"$13.97"),
                                      Icon(Icons.arrow_forward_ios)
                                    ],
                                  )),
                                ),
                                Container(
                                  height: 70,
                                  child: Card(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Column(
                                            children: [
                                              Text(
                                                "By placing an order you agree ",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                " to our Terms And Conditions ",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 17),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Text("Profile"),
                                        // Icon(Icons.arrow_forward_ios)
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 300,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  (OrderAccept())));
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color.fromARGB(
                                                    255, 83, 177, 117)),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ))),
                                    child: const Text(
                                      "Place Order",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ));
                },
                child: Text(
                  "Go to checkout",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ));
  }
}
