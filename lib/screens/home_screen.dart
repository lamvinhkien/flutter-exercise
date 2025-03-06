import 'package:flutter/material.dart';
import 'calculator.dart';
import 'check_prime.dart';
import 'profile.dart';
import 'appbar.dart';
import 'banner.dart';
import 'circular.dart';
import 'linear.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Color _backgroundColor = Colors.white;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  final List<Color> _colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.amber,
    Colors.white,
    Colors.pink,
  ];

  void _changeBackgroundColor() {
    final random = Random();
    setState(() {
      _backgroundColor = _colors[random.nextInt(_colors.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Profile'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeBackgroundColor,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Change background color'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Calculator()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Calculator'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckPrimeNumber()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Kiểm tra số nguyên tố'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppBarExam()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Appbar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BannerExam()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Banner'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Circular()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Circular'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Linear()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Linear'),
            ),
            // --- COUNT ----
            // SizedBox(height: 200),
            // const Text('Count:', style: TextStyle(fontSize: 24)),
            // Text(
            //   '$_counter',
            //   style: TextStyle(
            //     fontSize: 26,
            //     color: Colors.blue,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ElevatedButton(
            //       onPressed: _incrementCounter,
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: Colors.greenAccent,
            //       ),
            //       child: Icon(Icons.add, color: Colors.white),
            //     ),
            //     SizedBox(width: 10),
            //     ElevatedButton(
            //       onPressed: _decrementCounter,
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: Colors.redAccent,
            //       ),
            //       child: Icon(Icons.remove, color: Colors.white),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
