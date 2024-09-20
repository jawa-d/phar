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
  State<Selispage> createState() => _SelispageState();
}

class _SelispageState extends State<Selispage> {
  String _name = '';

  @override
  void initState() {
    super.initState();

    // عمل تأخير بسيط لعرض الأنميشن عند تحميل الصفحة
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _name = widget.name;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // تأثير الظل
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // عرض الصورة
              SizedBox(
                height: 200,
                width: 200,
                child: SvgPicture.asset(
                  widget.image,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),

              // أنميشن الاسم
              AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: Text(
                  _name,
                  key: ValueKey(_name),
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[900],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),

              // عرض السعر
              Text(
                "Price: ${widget.price} IQD",
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
