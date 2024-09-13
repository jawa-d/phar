import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // استيراد مكتبة SVG

class Selispage extends StatefulWidget {
  final String name;
  final double price;
  final String image;

  Selispage({
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  State<Selispage> createState() => _ProdectState();
}

class _ProdectState extends State<Selispage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(3, 113, 235, 0),
      ),
      body: Container(
        child: Column(
          children: [
            Text(widget.name),
            Text("price : ${widget.price} IQD"),
            SizedBox(
              height: 200, // Adjust size based on your layout needs
              width: 200,
              child: SvgPicture.asset(
                widget.image, 
                fit: BoxFit.contain, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
