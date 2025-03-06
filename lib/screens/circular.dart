import 'package:flutter/material.dart';
import 'dart:async';
// import 'dart:math';

class Circular extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CircularState();
  }
}

class CircularState extends State<Circular> {
  double _value = 0;
  bool _working = false;

  void startWorking() async {
    this.setState(() {
      this._working = true;
      this._value = 0;
    });
    for (int i = 0; i < 10; i++) {
      if (!this._working) {
        break;
      }
      await Future.delayed(Duration(seconds: 1));
      this.setState(() {
        this._value += 0.1;
      });
    }
    this.setState(() {
      this._working = false;
    });
  }

  void stopWorking() {
    this.setState(() {
      this._working = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter CircularProgressIndicator Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                value: this._value,
                backgroundColor: Colors.cyanAccent,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
              ),
            ),
            Text(
              "Percent: " + (this._value * 100).round().toString() + "%",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              child: Text("Start"),
              onPressed:
                  this._working
                      ? null
                      : () {
                        this.startWorking();
                      },
            ),
            ElevatedButton(
              child: Text("Stop"),
              onPressed:
                  !this._working
                      ? null
                      : () {
                        this.stopWorking();
                      },
            ),
          ],
        ),
      ),
    );
  }
}

// class Circular extends StatefulWidget {
//   @override
//   CircularState createState() => CircularState();
// }

// class CircularState extends State<Circular> {
//   double progress = 0.0;
//   Timer? timer;

//   void startLoading() {
//     stopLoading();
//     timer = Timer.periodic(Duration(milliseconds: 100), (Timer t) {
//       setState(() {
//         if (progress < 1.0) {
//           progress += 0.01;
//         } else {
//           stopLoading();
//         }
//       });
//     });
//   }

//   void stopLoading() {
//     timer?.cancel();
//     timer = null;
//   }

//   void clearProgress() {
//     stopLoading();
//     setState(() {
//       progress = 0.0; // Reset tiến trình về 0%
//     });
//   }

//   @override
//   void dispose() {
//     stopLoading();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Circular Progress")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CustomPaint(
//               size: Size(120, 120),
//               painter: CircularProgressPainter(progress),
//             ),
//             SizedBox(height: 10),
//             Text(
//               "Percent: ${(progress * 100).toInt()}%", // Hiển thị % tiến trình
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: startLoading,
//                   child: Text("Start"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.greenAccent,
//                   ),
//                 ),
//                 SizedBox(width: 15),
//                 ElevatedButton(
//                   onPressed: stopLoading,
//                   child: Text("Stop"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.redAccent,
//                   ),
//                 ),
//                 SizedBox(width: 15),
//                 ElevatedButton(
//                   onPressed: clearProgress,
//                   child: Text("Clear"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.yellowAccent,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CircularProgressPainter extends CustomPainter {
//   final double progress;
//   CircularProgressPainter(this.progress);

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint backgroundPaint =
//         Paint()
//           ..color = Colors.grey[300]!
//           ..strokeWidth = 8.0
//           ..style = PaintingStyle.stroke;

//     Paint progressPaint =
//         Paint()
//           ..color = Colors.orange
//           ..strokeWidth = 8.0
//           ..style = PaintingStyle.stroke
//           ..strokeCap = StrokeCap.round;

//     Paint dotPaint = Paint()..color = Colors.red; // Chấm đỏ

//     double centerX = size.width / 2;
//     double centerY = size.height / 2;
//     double radius = size.width / 2 - 10;

//     Rect rect = Rect.fromCircle(
//       center: Offset(centerX, centerY),
//       radius: radius,
//     );

//     // 🎯 Vẽ vòng tròn nền
//     canvas.drawCircle(Offset(centerX, centerY), radius, backgroundPaint);

//     // 🎯 Vẽ vòng tròn tiến trình
//     double sweepAngle = 2 * pi * progress;
//     canvas.drawArc(rect, -pi / 2, sweepAngle, false, progressPaint);

//     // 🔴 Tính vị trí chấm đỏ
//     double angle = -pi / 2 + sweepAngle;
//     double dotX = centerX + radius * cos(angle);
//     double dotY = centerY + radius * sin(angle);

//     // 🎯 Vẽ chấm đỏ
//     canvas.drawCircle(Offset(dotX, dotY), 6, dotPaint);
//   }

//   @override
//   bool shouldRepaint(CircularProgressPainter oldDelegate) {
//     return oldDelegate.progress != progress;
//   }
// }
