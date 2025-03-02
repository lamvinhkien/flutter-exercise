import 'package:flutter/material.dart';

class CheckPrimeNumber extends StatefulWidget {
  const CheckPrimeNumber({super.key});

  @override
  _CheckPrimeNumberState createState() => _CheckPrimeNumberState();
}

class _CheckPrimeNumberState extends State<CheckPrimeNumber> {
  final TextEditingController _number = TextEditingController();

  bool isPrime(int n) {
    if (n < 2) return false;
    for (int i = 2; i < n; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }

  @override
  void dispose() {
    _number.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Check Prime',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kiểm tra số nguyên tố'),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Quay lại trang trước
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
          child: Column(
            children: [
              TextField(
                controller: _number,
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(labelText: 'Nhập số'),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int number = int.tryParse(_number.text) ?? 0;
                  bool result = isPrime(number);
                  String message =
                      result
                          ? '$number là số nguyên tố'
                          : '$number không phải số nguyên tố';
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: Text(
                            'Kết quả',
                            style: TextStyle(fontSize: 24),
                          ),
                          content: Text(
                            message,
                            style: TextStyle(fontSize: 22),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('OK', style: TextStyle(fontSize: 24)),
                            ),
                          ],
                        ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueAccent,
                ),
                child: Text('Kiểm tra'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
