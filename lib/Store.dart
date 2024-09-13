import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart'; // تأكد من استيراد الحزمة المناسبة
import 'package:google_fonts/google_fonts.dart';
import 'package:par/selispage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
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
            crossAxisAlignment: CrossAxisAlignment.start, // Align items at the start
            children: [
              // Text section
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: RichText(
                    text: const TextSpan(
                      text: "Pharmacy ",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      children: [
                        TextSpan(
                          text: "Haven\n\n",
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 21, 0),
                          ),
                        ),
                        TextSpan(
                          text: "Your Trusted Health,\n",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(119, 63, 42, 42),
                          ),
                        ),
                        TextSpan(
                          text: "Source, Anytime,\n",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(119, 63, 42, 42),
                          ),
                        ),
                        TextSpan(
                          text: "Anywhere",
                          style: TextStyle(
                            fontSize: 15,
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
                padding: const EdgeInsets.only(bottom: 0, right: 1, top: 5), // Adjust top padding to align with the text
                child: Container(
                  width: 200, // Adjust width as needed
                  height: 200, // Adjust height as needed
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Svg("images/storeWelcome.svg"),
                      fit: BoxFit.cover,
                      // Use cover to ensure the image fills the container
                    ),
                  ),
                ),
              ),
            ],
          ),

          // First divider
          const Divider(),
          const SizedBox(height: 10), // Add the search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
          const SizedBox(height: 10),
          const Divider(),
          // Categories section
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
                // GestureDetector(
                //   onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Selispage(name: 'jawad', price: 2000, image: 'images/7191136_3568982.svg',)  ));},
                //   child: myPanadolCard(
                //   image: "images/21532495_6463385.svg",
                //   text: "Skin Care",
                // ), 
                // ),
             myPanadolCard(
  image: "images/21532495_6463385.svg",
  text: "jawad",
  name: "kadhim",
  price: 200.0,
),
myPanadolCard(
  image: "images/18407478_5995227.svg",
  text: "Brain Section",
  name: "Brain Medication",
  price: 500.0,
),

               myPanadolCard(
  image: "images/21532495_6463385.svg",
  text: "Skin Care",
  name: "Skin Care Product",
  price: 200.0,
),
myPanadolCard(
  image: "images/18407478_5995227.svg",
  text: "medo",
  name: "Brain ",
  price: 3333.0,
),
myPanadolCard(
  image: "images/18407478_5995227.svg",
  text: "abd",
  name: "Brain Medication",
  price: 44444.0,
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
              const Text("Best Seller", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
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
  image: "images/21532495_6463385.svg",
  text: "Skin Care",
  name: "Skin Care Product",
  price: 200.0,
),
myPanadolCard(
  image: "images/18407478_5995227.svg",
  text: "Brain Section",
  name: "Brain Medication",
  price: 500.0,
),

               myPanadolCard(
  image: "images/21532495_6463385.svg",
  text: "Skin Care",
  name: "Skin Care Product",
  price: 200.0,
),
myPanadolCard(
  image: "images/18407478_5995227.svg",
  text: "Brain Section",
  name: "Brain Medication",
  price: 500.0,
),
myPanadolCard(
  image: "images/18407478_5995227.svg",
  text: "Brain Section",
  name: "Brain Medication",
  price: 500.0,
),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: 20), // Almost finished section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Almost finished", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
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
  image: "images/21532495_6463385.svg",
  text: "Skin Care",
  name: "Skin Care Product",
  price: 200.0,
),
myPanadolCard(
  image: "images/18407478_5995227.svg",
  text: "Brain Section",
  name: "Brain Medication",
  price: 500.0,
),

               myPanadolCard(
  image: "images/21532495_6463385.svg",
  text: "Skin Care",
  name: "Skin Care Product",
  price: 200.0,
),
myPanadolCard(
  image: "images/18407478_5995227.svg",
  text: "Brain Section",
  name: "Brain Medication",
  price: 500.0,
),
myPanadolCard(
  image: "images/18407478_5995227.svg",
  text: "Brain Section",
  name: "Brain Medication",
  price: 500.0,
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
      //     SalomonBottomBarItem(
      //       icon: const Icon(Icons.attach_money),
      //       title: const Text("Invoices"),
      //       selectedColor: const Color(0xff263238),
      //     ),
      //   ],
      // ),
    );
  }

 Padding myPanadolCard({required String image, required String text, required String name, required double price}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 30),
    child: Column(
      children: [
        Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
              image: Svg(image), // Assuming `image` is an SVG
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
          width: 180, // Keep the width same as image container
          decoration: BoxDecoration(
            color: const Color(0xff263238),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            border: const Border(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8), // Add space between text and button
              Transform.translate(
                offset: const Offset(0, -8), // Move the button 8 pixels up
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Selispage(
                          name: name, // Pass the name from the card
                          price: price, // Pass the price from the card
                          image: image, // Pass the image from the card
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Background color of the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Adjust button padding
                  ),
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

}


