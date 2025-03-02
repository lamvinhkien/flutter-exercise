import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
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
              Text(
                'Lâm Vĩnh Kiện, 10_ĐH_TMĐT',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(child: Container(height: 100, color: Colors.blue)),
                  Expanded(child: Container(height: 100, color: Colors.green)),
                  Expanded(child: Container(height: 100, color: Colors.orange)),
                ],
              ),
              SizedBox(height: 100),
              FlutterLogo(size: 300, style: FlutterLogoStyle.horizontal),
              SizedBox(height: 140),
              ElevatedButton(
                onPressed: () {
                  print('Nút đã được bấm');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Bấm vào đây!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
