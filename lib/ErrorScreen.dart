import 'package:flutter/material.dart';
import 'package:par/Login2.dart';



class Errorscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Error Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ErrorScreen(), // ربط الشاشة الرئيسية بـ ErrorScreen
    );
  }
}

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // لون الخلفية
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Error'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0), // بعض المساحة حول المحتوى
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // يتم توسيط العناصر
            children: [
              Icon(
                Icons.error_outline, // أيقونة الخطأ
                color: Colors.redAccent,
                size: 100,
              ),
              SizedBox(height: 20), // مسافة بين الأيقونة والنص
              
              Text(
                'Oops! Something went wrong', // الرسالة الرئيسية
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10), // مسافة بين الرسالة الرئيسية والوصف

              Text(
                'We are experiencing an issue. Please try again later.', // الوصف
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30), // مسافة بين الوصف والزر

              ElevatedButton(
                onPressed: () {
                  // يمكنك هنا إعادة المحاولة أو العودة إلى الشاشة الرئيسية
               //   Navigator.pop(context); 
                  // رجوع إلى الشاشة السابقة
                  Navigator.pushReplacement(
                  context,
                MaterialPageRoute(builder: (context) => LoginPage2()),
                 );

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, // لون الزر
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // زوايا مستديرة للزر
                  ),
                ),
                child: Text(
                  'Try Again', // نص الزر
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}