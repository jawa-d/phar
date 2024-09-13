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
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.pink[50],
                border: Border.all(color: Colors.pink, width: 2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cathy Doll Splash Essence with ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "5000",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'An exceptional beauty product designed to transform your skincare routine. This innovative essence offers intense hydration and a refreshing burst of revitalization for your skin.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Categories: Beauty & Personal Care Promo, Skin Care',
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Current Stock: 16 pieces in stock',
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Add to Bag'),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {},
                          ),
                          Text('1'),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {},
                          ),
                        ],
                      ),
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
