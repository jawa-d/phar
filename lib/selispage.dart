import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Selispage extends StatefulWidget {
  const Selispage({super.key});

  @override
  State<Selispage> createState() => _ProdectState();
}

class _ProdectState extends State<Selispage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(3, 113, 235, 0),
      ),
      body: Container(),
    );
  }
}