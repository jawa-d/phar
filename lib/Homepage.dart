import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:par/Homepage2.dart';
import 'BNBdev.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // توزيع العناصر بحيث يكون هناك عنصر في الأعلى وآخر في الأسفل
        children: [
          // المحتويات الرئيسية في منتصف الشاشة
          Center(
            child: Column(
              children: [
                const Image(
                  width: 370,
                  height: 450,
                  image: Svg("images/storeWelcome.svg"),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "Health Management App",
                    style: TextStyle(
                      fontSize: 27,
                      wordSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    children: [
                      TextSpan(
                        text: "\n\n",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text:
                            "Revolutionize Your Pharmacy Business with Our \n",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      TextSpan(
                        text:
                            "Comprehensive App: Effortless Stock Management \n",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      TextSpan(
                        text:
                            "and Enhanced Local Store Presence",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // زر في أسفل الشاشة
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              //width: double.infinity, // لجعل الزر بعرض الشاشة
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 232, 80, 91)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // حواف دائرية بسيطة
                    //  side: BorderSide(
                       // color: Colors.black, // لون الحدود
                       // width: 2.0, // عرض الحدود
                    //  ),
                    ),
                  ),
                ),
                onPressed: () {
                  // عند الضغط على الزر، انتقل إلى صفحة أخرى
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage2()),
                  );
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white, // لون النص داخل الزر
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
}