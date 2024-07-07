import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:pakage_example/screen/about_us_screen.dart';
import 'package:pakage_example/screen/contact_us_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> sliders = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage("images/1.jpg"), fit: BoxFit.cover),
              ),
              child: Text("Drawer Header"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ContactUsScreen()),
                );
              },
              title: Text("ข่าวสาร"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AboutUsScreen()),
                );
              },
              title: Text("เกี่ยวกับเรา"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        child: Swiper(
          autoplay: true,
          itemCount: sliders.length,
          itemBuilder: (context, index) => Image.asset(
            sliders[index],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
