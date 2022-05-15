import 'dart:ui';

import 'package:coffeeui/modal.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatefulWidget {
  final Coffee coffee;

  DetailsScreen({required this.coffee});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 450,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(widget.coffee.imgUrl),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10.0,
                      sigmaY: 10.0,
                    ),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 12, top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.coffee.coffeeName,
                                    style: GoogleFonts.aldrich(
                                        textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    )),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    widget.coffee.coffeAddi,
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.orange,
                                      ),
                                      Text("4.5")
                                    ],
                                  )
                                ],
                              )),
                              Expanded(
                                  child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 43,
                                        width: 43,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xff141921)),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.egg_outlined,
                                              color: Colors.orange,
                                            ),
                                            Text(
                                              "Milk",
                                              style: TextStyle(fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 43,
                                        width: 43,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xff141921)),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.coffee_outlined,
                                              color: Colors.orange,
                                            ),
                                            Text("Coffee",
                                                style: TextStyle(fontSize: 10))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Color(0xff141921),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                        child: Text(
                                      "Medium Roasted",
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 10),
                                    )),
                                  )
                                ],
                              ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Description",
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Latte is a creamier version of coffee. Two-thirds of it is steamed milk, poured over a shot of espresso and topped with a layer of milk foam",
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "Size",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xff141921),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  "S",
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                )),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xff141921),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  "M",
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                )),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xff141921),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  "L",
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "\$",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            widget.coffee.price,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )),
            Expanded(
              flex: 2,
                child: Container(
                  margin: EdgeInsets.only(right: 25),
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepOrangeAccent),
                    child: Center(
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                      ),
                    )))
          ],
        ),
      ],
    ));
  }
}
