import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController _aController = TextEditingController();
  final TextEditingController _bController = TextEditingController();
  double _result = 0.0;
  void plus() {
    setState(() {
      double a = double.tryParse(_aController.text) ?? 0.0;
      double b = double.tryParse(_bController.text) ?? 0.0;
      _result = a + b;
    });
  }

  void minus() {
    setState(() {
      double a = double.tryParse(_aController.text) ?? 0.0;
      double b = double.tryParse(_bController.text) ?? 0.0;
      _result = a - b;
    });
  }

  void multiplication() {
    setState(() {
      double a = double.tryParse(_aController.text) ?? 0.0;
      double b = double.tryParse(_bController.text) ?? 0.0;
      _result = a * b;
    });
  }

  void division() {
    setState(() {
      double a = double.tryParse(_aController.text) ?? 0.0;
      double b = double.tryParse(_bController.text) ?? 0.0;
      _result = a / b;
    });
  }

  @override
  void dispose() {
    _aController.dispose();
    _bController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
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
                controller: _aController,
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(labelText: 'Nhập số A'),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
              TextField(
                controller: _bController,
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(labelText: 'Nhập số B'),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: plus,
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.greenAccent,
                    ),
                    child: Text('+'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: minus,
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.redAccent,
                    ),
                    child: Text('-'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: multiplication,
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.yellow,
                    ),
                    child: Text('x'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: division,
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blueAccent,
                    ),
                    child: Text('/'),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Text(
                'Kết quả: ${_result.toStringAsFixed(1)}',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
