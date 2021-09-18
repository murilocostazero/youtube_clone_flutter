import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter_app/CustomSearchDelegate.dart';
import 'package:youtube_clone_flutter_app/pages/HomePage.dart';
import 'package:youtube_clone_flutter_app/pages/LibraryPage.dart';
import 'package:youtube_clone_flutter_app/pages/SubscriptionsPage.dart';
import 'package:youtube_clone_flutter_app/pages/WhatshotPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  String? _result = "";
  @override
  Widget build(BuildContext context) {
    List pages = [
      HomePage(_result),
      WhatshotPage(),
      SubscriptionsPage(),
      LibraryPage()
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
          opacity: 1,
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          "images/youtube.png",
          width: 92,
          height: 48,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.cast),
            onPressed: () {
              print("cast");
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              print("notifications");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              String? response = await showSearch(
                  context: context, delegate: CustomSearchDelegate());
              // print("Response" + response.toString());
              setState(() {
                _result = response.toString();
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              print("account");
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // type: BottomNavigationBarType.shifting,
        // fixedColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Colors.red,
            icon: Icon(
              Icons.home,
            ),
            label: "Início",
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.orange,
            icon: Icon(Icons.whatshot),
            label: "Em alta",
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.purple,
            icon: Icon(Icons.subscriptions_outlined),
            label: "Inscrições",
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.blue,
            icon: Icon(Icons.video_library_outlined),
            label: "Biblioteca",
          ),
        ],
      ),
    );
  }
}
