import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CartPage(),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // للرجوع إلى الصفحة السابقة
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                _buildCartItem(
                  title: 'Cathy Doll Bright Up',
                  subtitle: 'Beauty & Personal Care Promo',
                  price: 5000,
                  quantity: 1,
                  imagePath: 'assets/images/cathy_doll_bright_up.png',
                  onAdd: () {},
                  onRemove: () {},
                ),
                _buildCartItem(
                  title: 'Paracetamol 500mg',
                  subtitle: 'Treatment, pills, orally',
                  price: 1000,
                  quantity: 4,
                  imagePath: 'assets/images/paracetamol.png',
                  onAdd: () {},
                  onRemove: () {},
                ),
                _buildCartItem(
                  title: 'Panadol 10x10 Caplets',
                  subtitle: 'Treatment, pills, orally',
                  price: 8000,
                  quantity: 1,
                  imagePath: 'assets/images/panadol.png',
                  onAdd: () {},
                  onRemove: () {},
                ),
                _buildCartItem(
                  title: 'Cathy Doll Acne oil Control',
                  subtitle: 'Beauty & Personal Care Promo',
                  price: 6000,
                  quantity: 3,
                  imagePath: 'images/13955738_5416078.svg',
                  onAdd: () {},
                  onRemove: () {},
                ),
                _buildCartItem(
                  title: 'Onpattro 10mg / 5ml',
                  subtitle: 'Treatment, Drops, orally',
                  price: 33000,
                  quantity: 2,
                  imagePath: 'assets/images/onpattro.png',
                  onAdd: () {},
                  onRemove: () {},
                ),
              ],
            ),
          ),
          _buildInvoiceSection(),
        ],
      ),
    );
  }

  Widget _buildCartItem({
    required String title,
    required String subtitle,
    required int price,
    required int quantity,
    required String imagePath,
    required VoidCallback onAdd,
    required VoidCallback onRemove,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(color: Colors.red),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(8.0),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage(imagePath), // عرض الصورة الحقيقية
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subtitle),
            SizedBox(height: 4), // المسافة بين النص الثاني والسعر
            Text(
              '$price IQD',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ],
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove_circle_outline, color: Colors.red),
                  onPressed: onRemove,
                ),
                Text('$quantity', style: TextStyle(fontSize: 18)),
                IconButton(
                  icon: Icon(Icons.add_circle_outline, color: Colors.red),
                  onPressed: onAdd,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInvoiceSection() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            spreadRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Invoice as',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Total Cost: 53,000 IQD',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // أضف وظيفة إضافة إلى الفاتورة هنا
            },
            child: Text('Add to Invoices'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // اللون الأساسي للزر
              padding: EdgeInsets.symmetric(vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
