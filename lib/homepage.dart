import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TabController? controller;
  // = TabController(initialIndex: 0, length: 4, vsync: this)

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text('OUI BOOTCAMP'),
          elevation: 0,
          leading: const Icon(Icons.person),
          bottom: const TabBar(
            tabs: [
              Icon(Icons.camera),
              Text('Chats'),
              Text('Status'),
              Text('Calls'),
            ],
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
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
                MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (_) {
                        return AlertDialog(
                          title: const Text('Title Dialog'),
                          content: const Text(
                              'This is a dialog content. It contain a lot of words'),
                          backgroundColor: Colors.green,
                          actionsAlignment: MainAxisAlignment.end,
                          // actionsPadding: const EdgeInsets.only(top: 2, bottom: 1),
                          // contentPadding: const EdgeInsets.only(top: 12, bottom: 12, left: 12, right: 12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Cancel',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Done',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Show AlertDialog'),
                ),
                const SizedBox(height: 12),
                MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return Dialog(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text('Dialog Title'),
                                const Text(
                                    'This is a content inside our dialog box'),
                                MaterialButton(
                                  onPressed: () {},
                                  color: Colors.green,
                                  child: const Text('CLOSE ME'),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Show Dialog'),
                ),
                const SizedBox(height: 12),
                CupertinoButton(
                  child: const Text('Show Cupertino Dialog'),
                  onPressed: () {
                    Platform.isAndroid
                        ? debugPrint('im on windows')
                        : showCupertinoDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (_) {
                              return CupertinoAlertDialog(
                                title: const Text('Cupertino Dialog'),
                                content: const Text(
                                    'This is is a cupertino Dialog box for iOS'),
                                actions: [
                                  CupertinoButton(
                                      child: const Text('Cancel'),
                                      onPressed: () {}),
                                  CupertinoButton(
                                      child: const Text('Done'),
                                      onPressed: () {}),
                                ],
                              );
                            },
                          );
                  },
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.flutter_dash, size: 36, color: Colors.orange),
                    Icon(Icons.source, size: 36, color: Colors.pink),
                    Icon(Icons.dashboard_customize,
                        size: 36, color: Colors.purple),
                    Icon(Icons.support, size: 36, color: Colors.blue),
                  ],
                ),
                const SizedBox(height: 12),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    // size: 45,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 12),
                const CircularProgressIndicator(
                    backgroundColor: Colors.white, color: Colors.red),
                const SizedBox(height: 12),
                const LinearProgressIndicator(),
                const SizedBox(height: 22),
                const ExpansionTile(
                  title: Text('This is an expansion'),
                  children: [
                    Text('THis is one'),
                    Text('THis is one'),
                    Text('THis is one'),
                    Text('THis is one'),
                  ],
                ),
                const SizedBox(height: 82),
              ],
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
      ),
    );
  }
}
