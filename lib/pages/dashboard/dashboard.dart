import 'package:flutter/material.dart';
import 'package:sunflower/pages/addpost/add_post.dart';
import 'package:sunflower/pages/home/home_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  var isListView = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sunflower'),
        actions: [
          InkWell(
            onTap: () => setState(() {
              isListView = !isListView;
            }),
            child: Container(
              margin: EdgeInsets.only(right: 14.0),
              child: Icon(
                isListView ? Icons.dashboard : Icons.list,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: _selectedIndex == 0 ? HomePage(isListView : isListView) : AddPost(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Add Post',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
