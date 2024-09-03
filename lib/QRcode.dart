import 'package:flutter/material.dart';

class Qrcode extends StatefulWidget {
  const Qrcode({super.key});

  @override
  State<Qrcode> createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class QRCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // نص أو بيانات لتوليد رمز QR
    final String data = "https://example.com"; 

    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // عرض رمز QR
              QrImage(
                data: data, // البيانات التي سيتم تحويلها إلى رمز QR
                size: 200.0, // حجم رمز QR
                backgroundColor: Colors.white, // لون الخلفية
                foregroundColor: Colors.black, // لون الرموز في رمز QR
              ),
              SizedBox(height: 20),
              // نص توضيحي
              Text(
                'Scan this QR code to visit the website:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


