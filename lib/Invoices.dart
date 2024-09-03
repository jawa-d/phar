import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Invoices extends StatefulWidget {
  const Invoices({super.key});

  @override
  State<Invoices> createState() => _InvoicesState();
}

class _InvoicesState extends State<Invoices> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: Text("Pharmacy", style: GoogleFonts.lato()),
        actions: const [Icon(Icons.shopping_cart_outlined)],
        centerTitle: true,
      ),
      
  drawer: const Drawer(),
     
    );
  }
}