import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test2/widgets/custom_text_field.dart';

class BeveragesPage extends StatefulWidget {
  const BeveragesPage({super.key});

  @override
  State<BeveragesPage> createState() => _BeveragesPageState();
}

class _BeveragesPageState extends State<BeveragesPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  List drinks = [
    {
      "image": "images/pic14.png",
      "title": "Diet Coke",
      "subtitle": "355ml",
      "price": "150\$"
    },
    {
      "image": "images/pic8.png",
      "title": "Sprite Can",
      "subtitle": "325ml",
      "price": "150\$"
    },
    {
      "image": "images/pic6.png",
      "title": "Apple & Grape Juice",
      "subtitle": "2L",
      "price": "5.99\$"
    },
    {
      "image": "images/pic1.png",
      "title": "Orange Juice",
      "subtitle": "2L",
      "price": "8.99\$"
    },
    {
      "image": "images/pic11.png",
      "title": "Coca Cola Can",
      "subtitle": "325ml",
      "price": "4.99\$"
    },
    {
      "image": "images/pic2.png",
      "title": "Pepsi Can",
      "subtitle": "330ml",
      "price": "4.99\$"
    },
  ];

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Beverages"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: FloatingActionButton(
              elevation: 0,
              backgroundColor: Color.fromARGB(255, 83, 177, 117),
              onPressed: () {
                scaffoldKey.currentState!
                    .showBottomSheet((context) => Container(
                          height: 500,
                          width: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Add",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(Icons.disabled_by_default)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: CustomTextField(
                                      onSaved: (value) {
                                        title = value;
                                      },
                                      hint: 'Name',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: CustomTextField(
                                      onSaved: (value) {
                                        title = value;
                                      },
                                      hint: 'Description',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: CustomTextField(
                                      onSaved: (value) {
                                        title = value;
                                      },
                                      hint: 'Price',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: CustomTextField(
                                      onSaved: (value) {
                                        title = value;
                                      },
                                      hint: 'Image',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 300,
                                    child: ElevatedButton(
                                      onPressed: () {},
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
                                        "Add Item",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ));
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
            // physics: const NeverScrollableScrollPhysics(),
            //shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 300),
            itemCount: drinks.length,
            itemBuilder: (context, i) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => (BeveragesPage())));
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 200,
                        color: Colors.grey[200],
                        child: Image.asset(
                          drinks[i]["image"],
                          height: 150,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Text(drinks[i]["title"],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      Text(drinks[i]["subtitle"],
                          style: const TextStyle(
                              fontSize: 14, color: Colors.grey)),
                      Text("price",
                          style: const TextStyle(
                              fontSize: 14, color: Colors.grey)),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spac,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3),
                            child: Text(drinks[i]["price"],
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.black)),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          FloatingActionButton(
                            elevation: 0,
                            backgroundColor: Colors.green,
                            onPressed: () {},
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
