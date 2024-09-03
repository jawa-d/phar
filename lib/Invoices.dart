import 'package:flutter/material.dart';

class Invoices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PharmacyScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PharmacyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pharmacy'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // العنوان
            Text(
              'Medication Cart',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Streamlined Prescription Checkout & Medication Review'),
            SizedBox(height: 20),
            // شريط البحث
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search by name or item id...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),
            // قائمة الفواتير
            Text(
              'Invoices',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // عدد الفواتير
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Container(
                        width: 60, // تعيين عرض ثابت للحاوية
                        height: 60, // تعيين ارتفاع ثابت للحاوية
                        decoration: BoxDecoration(
                          color: Colors.red, // لون خلفية الحاوية
                          borderRadius: BorderRadius.circular(8.0), // لجعل الحاوية ذات زوايا دائرية
                        ),
                        child: Center(
                          child: Text(
                            '18\nMay',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white, // لون النص داخل الحاوية
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Invoice as'),
                          Text(
                            'Jawad Kad',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Total Cost',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 13), // المسافة بين الكلمة والسعر
                          Text(
                            '85,000 IQD',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.store),
      //       label: 'Store',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.inventory),
      //       label: 'Inventory',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.receipt),
      //       label: 'Invoices',
      //     ),
      //   ],
      // ),
    );
  }
}
