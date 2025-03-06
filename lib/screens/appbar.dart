import 'package:flutter/material.dart';

class AppBarExam extends StatelessWidget {
  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(content: Text("Hi, Lam Vinh Kien !!!")),
    );
  }

  void _showMyBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Center(child: Text("Welcome to Scaffold!")),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.greenAccent,
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
            labelColor: Colors.blueAccent,
            tabs: [
              Tab(child: Text('Car'), icon: Icon(Icons.directions_car)),
              Tab(child: Text('Bus'), icon: Icon(Icons.directions_transit)),
              Tab(child: Text('Bike'), icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lâm Vĩnh Kiện 10-TMĐT',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Click button to show bottom sheet',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lâm Vĩnh Kiện 10-TMĐT',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Other TabBarView', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lâm Vĩnh Kiện 10-TMĐT',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Other TabBarView', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ],
        ),

        // --- BOTTOM APP BAR 1 ---
        floatingActionButton: FloatingActionButton.extended(
          elevation: 4.0,
          icon: const Icon(Icons.add),
          label: Text('Add'),
          backgroundColor: Colors.lightBlueAccent,
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.greenAccent,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
            ],
          ),
          shape: AutomaticNotchedShape(
            RoundedRectangleBorder(),
            StadiumBorder(side: BorderSide()),
          ),
        ),

        // --- BOTTOM APP BAR 2 ---
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => _showMyBottomSheet(context),
        //   child: Icon(Icons.add),
        //   backgroundColor: Colors.lightBlueAccent,
        // ),
        // bottomNavigationBar: BottomAppBar(
        //   color: Colors.greenAccent,
        //   child: Row(
        //     mainAxisSize: MainAxisSize.max,
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        //       PopupMenuButton(
        //         icon: Icon(Icons.share),
        //         itemBuilder:
        //             (context) => [
        //               PopupMenuItem(value: 1, child: Text("Facebook")),
        //               PopupMenuItem(value: 2, child: Text("Instagram")),
        //               PopupMenuItem(value: 3, child: Text("Tiktok")),
        //             ],
        //       ),
        //       IconButton(onPressed: () {}, icon: Icon(Icons.email)),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
