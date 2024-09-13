import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Medicine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Display'),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              'images/homeWelcome.svg', // رابط صورة SVG
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              //height: 0,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 38, 50, 56),

                border: Border.all(color: const Color.fromARGB(255, 38, 50, 56), width: 2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // تجعل العناصر على الجهتين
                    children: [
                      const Text(
                        'Cathy Doll Splash Essence with',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white54),
                      ),
                      const Text(
                        "50000",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white54),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  const Text(
                    'An exceptional beauty product designed to transform your skincare routine. This innovative essence offers intense hydration and a refreshing burst of revitalization for your skin.',
                    style: TextStyle(fontSize: 16,color:Colors.white54),
                  ),
                  SizedBox(height: 8),
                  
                   const Divider(),
                  const Text(
                    'Categories: Beauty & Personal Care Promo, Skin Care',
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.red),
                  ),
                  SizedBox(height: 8),
                  const Text(
                    'Current Stock: 16 pieces in stock',
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                   ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 255, 255, 255), // لون الخلفية
  ),
  child: Text(
    'Add to Bag',
    style: TextStyle(
      color: const Color.fromARGB(255, 30, 50, 56), // لون النص
    ),
  ),
),

                     Row(
  children: [
    IconButton(
      icon: Icon(Icons.remove, color: Colors.red), // لون للأيقونة
      onPressed: () {},
    ),
    Text('1',style: TextStyle(color: Colors.amber),),
    IconButton(
      icon: Icon(Icons.add, color: Colors.red), // لون للأيقونة
      onPressed: () {},
    ),
  ],
)

                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
