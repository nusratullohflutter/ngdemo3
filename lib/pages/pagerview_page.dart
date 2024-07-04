import 'package:flutter/material.dart';

class PagerviewPage extends StatefulWidget {
  const PagerviewPage({super.key});

  @override
  State<PagerviewPage> createState() => _PagerviewPageState();
}

class _PagerviewPageState extends State<PagerviewPage> {
  PageController _pageController = PageController();

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PagerView Page"),
        backgroundColor: Colors.blue,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Container(
            color: Colors.pink,
            child: Center(
              child: Text(
                "Page One",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Container(
            color: Colors.cyan,
            child: Center(
              child: Text(
                "Page One",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: "Business")
        ],
        selectedItemColor: Colors.orange,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },
      ),
    );
  }
}
