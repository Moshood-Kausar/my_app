import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('OUI BOOTCAMP'),
        elevation: 0,
        leading: const Icon(
          Icons.person,
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                'Student Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                'Kausar',
                style: TextStyle(fontSize: 30),
              ),
              subtitle: Text('my name'),
              isThreeLine: true,
              leading: Icon(Icons.person),
              trailing: Icon(Icons.phone),
              tileColor: Colors.grey,
            ),
            ListTile(
              title: Text(
                'Gender',
                style: TextStyle(color: Colors.yellow),
              ),
              tileColor: Colors.blue,
              subtitle: Text('Female', style: TextStyle(fontSize: 30)),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        foregroundColor: Colors.blue,
        child: const Icon(Icons.phone),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.pink,
          child: const Center(
            child: Text(
              'Flutter Bootcamp',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.home),
            label: 'HomePage',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Contact'),
        ],
      ),
    );
  }
}
