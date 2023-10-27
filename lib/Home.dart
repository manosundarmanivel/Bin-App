import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // Add your different pages/screens here
    Placeholder(), // Example screen 1
    Placeholder(), // Example screen 2
    Placeholder(), // Example screen 3
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bin Ease'),
      ),
      body: SingleChildScrollView(
        child: Center(
          // Center the cards in the middle of the screen
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 5,
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text(
                    'Company 1',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text(
                    'Company  2',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text(
                    'Company  3',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text(
                    'Company  4',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text(
                    'Company  5',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Map',
          ),
        ],
      ),
    );
  }
}
