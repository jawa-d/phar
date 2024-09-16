import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:firebase_auth/firebase_auth.dart'; // استدعاء FirebaseAuth

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Registration',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // FirebaseAuth instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // دالة التسجيل باستخدام Firebase
  Future<void> _register() async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        // تسجيل المستخدم باستخدام البريد الإلكتروني وكلمة المرور
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );

        // نجاح التسجيل
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Registration Successful')),
        );

        // إعادة توجيه المستخدم بعد التسجيل الناجح (يمكن توجيهه إلى صفحة تسجيل الدخول أو الصفحة الرئيسية)
        Navigator.pop(context);

      } on FirebaseAuthException catch (e) {
        // عرض رسالة خطأ في حالة فشل التسجيل
        String message;
        if (e.code == 'weak-password') {
          message = 'The password provided is too weak.';
        } else if (e.code == 'email-already-in-use') {
          message = 'The account already exists for that email.';
        } else {
          message = e.message ?? 'An unknown error occurred';
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registration Failed: $message')),
        );
      }
    }
  }

  // التحقق من صحة البريد الإلكتروني
  String? _emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  // التحقق من صحة كلمة المرور
  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image(
                  width: 150,
                  height: 150,
                  image: Svg("images/18407478_5995227.svg"),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0), // حواف دائرية
                  ),
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: _emailValidator,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0), // حواف دائرية
                  ),
                  labelText: 'Password',
                ),
                validator: _passwordValidator,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _register, // ربط زر التسجيل بالدالة
                child: const Text('Register', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
