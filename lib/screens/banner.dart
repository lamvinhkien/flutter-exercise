import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class BannerExam extends StatefulWidget {
  @override
  BannerExamState createState() => BannerExamState();
}

class BannerExamState extends State<BannerExam> {
  int selectedIndex = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BannerExam',
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: Text("Banner Example"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            Banner(
              message: 'Offer 20% off',
              location: BannerLocation.bottomEnd,
              color: Colors.blue,
              child: Container(
                height: 150,
                width: double.infinity,
                color: Colors.yellowAccent,
                child: Padding(
                  padding: EdgeInsets.all(17),
                  child: Row(
                    children: [
                      Image.asset("assets/images/banh-mi-sai-gon.jpg"),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "BÁNH MÌ",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Bánh mì Saigon ngon ơi là ngon !!!",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Lâm Vĩnh Kiện, 10-TMĐT',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),

        // --- BOTTOM NAVIGATION BAR ---
        // bottomNavigationBar: BottomNavigationBar(
        //   backgroundColor: Colors.orangeAccent,
        //   currentIndex: selectedIndex,
        //   selectedItemColor: Colors.black,
        //   unselectedItemColor: Colors.redAccent,
        //   onTap: (index) {
        //     setState(() {
        //       selectedIndex = index;
        //     });
        //   },
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.contacts),
        //       label: 'Contacts',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.contacts),
        //       label: 'Emails',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.contacts),
        //       label: 'Profile',
        //     ),
        //   ],
        // ),

        // --- BOTTOM CONVEX APPBAR ---
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.purple,
          color: Colors.cyan,
          activeColor: Colors.yellowAccent,
          items: [
            TabItem(icon: Icons.home, title: "Home"),
            TabItem(icon: Icons.search, title: "Search"),
            TabItem(icon: Icons.person, title: "Profile"),
          ],
          initialActiveIndex: 0,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
