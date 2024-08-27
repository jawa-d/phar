import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';


class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Home Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
      
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(141, 55, 195, 255),
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
        
      ),
      body: Center(

        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            ScaleTransition(
              scale: _animation,
              child: Image(
                image: Svg("images/Illustrations/7191136_3568982.svg"),
                width: 300,
                height: 300,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Pharmacy',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}