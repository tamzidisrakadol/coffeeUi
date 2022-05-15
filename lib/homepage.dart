import 'package:coffeeui/detailscreen.dart';
import 'package:coffeeui/modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final coffee = Coffee.generateCoffeelist();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.wifi_protected_setup,
                color: Colors.orange,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.orange,
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: ''),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Order Your Coffee Now",
              style: GoogleFonts.bebasNeue(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w500)),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.orange,
                  ),
                  hintText: "Search here",
                  hintStyle: TextStyle(color: Color(0xff52555a)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Text(
                    "Arabica",
                    style: GoogleFonts.lato(
                        textStyle:
                            TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Robusta",
                    style: GoogleFonts.lato(
                        textStyle:
                            TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Black",
                    style: GoogleFonts.lato(
                        textStyle:
                            TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Latte",
                    style: GoogleFonts.lato(
                        textStyle:
                            TextStyle(fontSize: 20, color: Colors.orange)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Cappuccino",
                    style: GoogleFonts.lato(
                        textStyle:
                            TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Americano",
                    style: GoogleFonts.lato(
                        textStyle:
                            TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Espresso",
                    style: GoogleFonts.lato(
                        textStyle:
                            TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 240,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffee.length,
                  itemBuilder: (context, index) {
                    Coffee coffeeScreen = coffee[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> DetailsScreen(coffee: coffeeScreen)));
                      },
                      child: Card(
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 125,
                                width: 160,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(coffee[index].imgUrl),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  coffee[index].coffeeName,
                                  style: GoogleFonts.cinzel(
                                      textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  )),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    coffee[index].coffeAddi,
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 13),
                                  )),
                              SizedBox(
                                height: 18,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$",
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      coffee[index].price,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 65,
                                    ),
                                    Icon(
                                      Icons.add_box,
                                      color: Colors.orange,
                                      size: 25,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
