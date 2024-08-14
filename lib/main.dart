import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        surfaceTintColor: Colors.blue,
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text(
          "Bottom Sheet",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                isDismissible: false,
                context: context,
                builder: (context) => SizedBox(
                  height: 300,
                  child: ListView(
                    padding: EdgeInsets.all(8),
                    children: [
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text("Settings"),
                      ),
                      ListTile(
                        leading: Icon(Icons.help),
                        title: Text("Help"),
                      ),
                      ListTile(
                        leading: Icon(Icons.info_outline_rounded),
                        title: Text("About"),
                      ),
                      ListTile(
                        leading: Icon(Icons.logout),
                        title: Text("Loguut"),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Close",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Text(
              'Buka Bottom Sheet',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
