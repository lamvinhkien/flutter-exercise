import 'package:flutter/material.dart';

class AppBarExam extends StatelessWidget {
  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(content: Text("Hi")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          title: Text("AppBar"),
          leading: IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {
              showAlert(context);
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.file_upload),
              onPressed: () => {print("Click on upload button")},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => {print("Click on settings button")},
            ),
            PopupMenuButton(
              icon: Icon(Icons.share),
              itemBuilder:
                  (context) => [
                    PopupMenuItem(value: 1, child: Text("Facebook")),
                    PopupMenuItem(value: 2, child: Text("Instagram")),
                  ],
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Car")),
            Center(child: Text("Transit")),
            Center(child: Text("Bike")),
          ],
        ),
      ),
    );
  }
}
