import 'package:flutter/material.dart';
import 'LandingPage.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {

  List<Widget> halaman = [
    LandingPage(),
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];

  int _currentIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 25.0;
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: halaman,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            pageController.animateToPage(index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOutCirc,
            );
          });
        },
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
            color: Color(0xFF00880C),
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.black26,
        ),
        iconSize: size.width * (padSize / size.width),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              label: 'Promos'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list_rounded),
              label: 'Orders'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat'
          )
        ],
      ),
    );
  }
}



