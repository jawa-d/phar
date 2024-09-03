import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Invoices extends StatefulWidget {
  const Invoices({super.key});

  @override
  State<Invoices> createState() => _InvoicesState();
}

class _InvoicesState extends State<Invoices> {
    var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: Text("Pharmacy", style: GoogleFonts.lato()),
        actions: const [Icon(Icons.shopping_cart_outlined)],
        centerTitle: true,
      ),
  drawer: const Drawer(),
   body: ListView(

   ),
    bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        
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