import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart'; // تأكد من استيراد الحزمة المناسبة
import 'package:google_fonts/google_fonts.dart';
import 'package:par/selispage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Inventory extends StatefulWidget {
  const Inventory({super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Pharmacy", style: GoogleFonts.lato()),
      //   actions: const [Icon(Icons.shopping_cart_outlined)],
      //   elevation: 0,
      // ),
      drawer: const Drawer(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          // Row to place image and text in a horizontal line
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text section
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: RichText(
                    text: const TextSpan(
                      text: "Medicine ",
                      style: TextStyle(
                        height: 0,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      children: [
                        TextSpan(
                          text: "inventory\n\n",
                          style: TextStyle(
                            height: 0,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 21, 0),
                          ),
                        ),
                        TextSpan(
                          text: "Track, Manage, and,\n",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(119, 63, 42, 42),
                          ),
                        ),
                        TextSpan(
                          text: "Reorder Easily.,\n",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(119, 63, 42, 42),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Image section
              Padding(
                padding: const EdgeInsets.only(bottom: 0, right: 1, top: 5),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Svg("images/inventoryWelcome.svg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          const SizedBox(height: 10),
          // Add the search bar with button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Define your action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 21, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    "Add item",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Divider(),
          // Categories section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Categories",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                "See all",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: 300,
            child: ListView(
              padding: const EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>  Selispage(name: 'ali', price: 7888, image: 'images/7191136_3568982.svg',),
                      ),
                    );
                  },
                  child: myPanadolCard(
                    image: "images/21532495_6463385.svg",
                    text: "Skin Care,",
                  ),
                ),
                myPanadolCard(
                  image: "images/21532495_6463385.svg",
                  text: "Skin Care",
                ),
                myPanadolCard(
                  image: "images/18407478_5995227.svg",
                  text: "Brain Section",
                ),
                myPanadolCard(
                  image: "images/15577656_5642613.svg",
                  text: "Sex Medication",
                ),
                myPanadolCard(
                  image: "images/13955738_5416078.svg",
                  text: "Advil",
                ),
                myPanadolCard(
                  image: "images/7230627_3588966.svg",
                  text: "Aspirin",
                ),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: 20),
          // Best Seller section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Best Seller",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                "See all",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: 300,
            child: ListView(
              padding: const EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              children: [
                myPanadolCard(
                  image: "images/7230627_3588966.svg",
                  text: "Aspirin",
                ),
            myPanadolCard(
                  image: "images/NoResult.svg",
                  text: "Givlaari 189 mg/ml",
                ),
                myPanadolCard(
                  image: "images/NoResult.svg",
                  text: "Vyndaqel 20 mg",
                ),
                myPanadolCard(
                  image: "images/NoResult.svg",
                  text: "Onpattro",
                ),
                myPanadolCard(
                  image: "images/NoResult.svg",
                  text: "Excedrin",
                ),
                 myPanadolCard(
                  image: "images/7230627_3588966.svg",
                  text: "Aspirin",
                ),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: 20),
          // Almost finished section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Almost finished",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                "See all",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: 300,
            child: ListView(
              padding: const EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              children: [
                myPanadolCard(
                  image: "images/NoResult.svg",
                  text: "Oxlumo 94.5 mg",
                ),
               myPanadolCard(
                  image: "images/NoResult.svg",
                  text: "Givlaari 189 mg/ml",
                ),
                myPanadolCard(
                  image: "images/NoResult.svg",
                  text: "Givlaari 189 mg/ml",
                ),
                myPanadolCard(
                  image: "images/NoResult.svg",
                  text: "Sudafed",
                ),
                myPanadolCard(
                  image: "images/NoResult.svg",
                  text: "Onpattro",
                ),
                 myPanadolCard(
                  image: "images/7230627_3588966.svg",
                  text: "Aspirin",
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
      // bottomNavigationBar: SalomonBottomBar(
      //   currentIndex: _currentIndex,
      //   onTap: (i) => setState(() => _currentIndex = i),
      //   items: [
      //     SalomonBottomBarItem(
      //       icon: const Icon(Icons.home),
      //       title: const Text("Home"),
      //       selectedColor: const Color.fromARGB(255, 232, 80, 91),
      //     ),
      //     SalomonBottomBarItem(
      //       icon: const Icon(Icons.store_mall_directory_outlined),
      //       title: const Text("Store"),
      //       selectedColor: const Color.fromARGB(255, 232, 80, 91),
      //     ),
      //     SalomonBottomBarItem(
      //       icon: const Icon(Icons.qr_code_scanner_rounded),
      //       title: const Text("QR"),
      //       selectedColor: const Color.fromARGB(255, 232, 80, 91),
      //     ),
      //     SalomonBottomBarItem(
      //       icon: const Icon(Icons.inventory_sharp),
      //       title: const Text("Inventory"),
      //       selectedColor: const Color.fromARGB(255, 232, 80, 91),
      //     ),
      //   ],
      // ),
    );
  }
}

// Function to create a card widget for medicines
Padding myPanadolCard({required String image, required String text}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 30),
    child: Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // إزالة shadow تمامًا
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 7,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: Svg(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color(0xff263238),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              border: Border(
                right: BorderSide(
                  color: Colors.red,
                  width: 3.0,
                ),
                bottom: BorderSide(
                  color: Colors.red,
                  width: 3.0,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 0),
                SizedBox(
                  height: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Text 1",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.red,
                        thickness: 2,
                        width: 20,
                      ),
                      Text(
                        "Text 2",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Text 3",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Text 4",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}


