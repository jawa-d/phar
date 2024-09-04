import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

// استيراد الملفات الخاصة بالصفحات الأخرى
import 'package:par/Inventory.dart';
import 'package:par/Invoices.dart';
import 'package:par/QRcode.dart';
import 'package:par/Store.dart';

class Homepage2 extends StatefulWidget {
  const Homepage2({super.key});

  @override
  State<Homepage2> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage2> {
  int _currentIndex = 0;

  // Define the pages you want to navigate to
  final List<Widget> _pages = [
    Homepage2Content(),
    Store(),
    Qrcode(),
    Inventory(),
    Invoices(),
  ];

  void _onItemTapped(int index) {
    if (index >= 0 && index < _pages.length) {
      setState(() {
        _currentIndex = index;
      });
    } else {
      // Handle the case where the index is out of range
      print("Index out of range: $index");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pharmacy", style: GoogleFonts.lato()),
        actions: const [Icon(Icons.shopping_cart_outlined)],
      ),
      drawer: const Drawer(),
      body: _pages.isNotEmpty ? _pages[_currentIndex] : Center(child: Text('No pages available')), // Handle empty _pages list
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: const Color.fromARGB(255, 232, 80, 91),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.store_mall_directory_outlined),
            title: const Text("Store"),
            selectedColor: const Color.fromARGB(255, 232, 80, 91),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.qr_code_scanner_rounded),
            title: const Text("QR"),
            selectedColor: const Color.fromARGB(255, 232, 80, 91),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.inventory_sharp),
            title: const Text("Inventory"),
            selectedColor: const Color.fromARGB(255, 232, 80, 91),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.attach_money),
            title: const Text("Invoices"),
            selectedColor: const Color(0xff263238),
          ),
        ],
      ),
    );
  }
}

// Extract the content of the Homepage2 into a separate widget
class Homepage2Content extends StatelessWidget {
  const Homepage2Content({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 90),
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff263238),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 60),
                child: RichText(
                  text: const TextSpan(
                    text: "Welco",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: "me\n\n",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: " Spreading Health,\n ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "One ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "Smile ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: "at a Time ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              top: -150,
              right: 0,
              child: Image(
                width: 370,
                height: 450,
                image: Svg("images/13955738_5416078.svg"), // Update to AssetImage if it's an SVG
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Categories", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("See all", style: TextStyle(fontSize: 15)),
          ],
        ),
        SizedBox(
          height: 300,
          child: ListView(
            padding: const EdgeInsets.all(20),
            scrollDirection: Axis.horizontal,
            children: [
              myPanadolCard(
                image: "images/404.svg",
                text: "Skin Care",
              ),
              myPanadolCard(
                image: "images/8412809_3907182.svg",
                text: "Brain Section",
              ),
              myPanadolCard(
                image: "images/404.svg",
                text: "Sex Medication",
              ),
              myPanadolCard(
                image: "images/404.svg",
                text: "Advil",
              ),
              myPanadolCard(
                image: "images/404.svg",
                text: "Aspirin",
              ),
            ],
          ),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Categories", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("See all", style: TextStyle(fontSize: 15)),
          ],
        ),
        SizedBox(
          height: 300,
          child: ListView(
            padding: const EdgeInsets.all(20),
            scrollDirection: Axis.horizontal,
            children: [
              myPanadolCard(
                image: "images/404.svg",
                text: "Panadol 500 mg",
              ),
              myPanadolCard(
                image: "images/404.svg",
                text: "Paracetamol 500 mg",
              ),
              myPanadolCard(
                image: "images/404.svg",
                text: "Vyndaqel 20 mg",
              ),
              myPanadolCard(
                image: "images/404.svg",
                text: "Onpattro",
              ),
              myPanadolCard(
                image: "images/404.svg",
                text: "Excedrin",
              ),
            ],
          ),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Categories", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("See all", style: TextStyle(fontSize: 15)),
          ],
        ),
        SizedBox(
          height: 300,
          child: ListView(
            padding: const EdgeInsets.all(20),
            scrollDirection: Axis.horizontal,
            children: [
              myPanadolCard(
                image: "images/404.svg",
                text: "Oxlumo 94.5 mg",
              ),
              myPanadolCard(
                image: "images/404.svg",
                text: "Paracetamol 500 mg",
              ),
              myPanadolCard(
                image: "images/404.svg",
                text: "Givlaari 189 mg/ml",
              ),
              myPanadolCard(
                image: "images/404.svg",
                text: "Sudafed",
              ),
              myPanadolCard(
                image: "images/404.svg",
                text: "Onpattro",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding myPanadolCard({required String image, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 30),
      child: Column(
        children: [
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: AssetImage(image), // Update to AssetImage if it's an SVG
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  blurRadius: 7,
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 180,
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
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: const Offset(0.0, 5),
                ),
              ],
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
