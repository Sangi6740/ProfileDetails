import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My profile details',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My profile details"),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 4,
          child: SizedBox(
            width: 350,
            height: 670,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/profile.webp'),
                  ),
                ),
                SizedBox(height: 16),
                Text("Hello Sandra Thomas!", style: TextStyle(fontSize: 25)),
                SizedBox(height: 20),
                Text("Click the button below to check your details."),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    print("Button has been clicked");
                  },
                  child: Text("Details"),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.tealAccent),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile.webp'),
                  ),
                  SizedBox(width: 20),
                  Text(" Welcome Sandra! "),
                ],
              ),
            ),
            ListTile(leading: Icon(Icons.person), title: Text("My details")),
          ],
        ),
      ),
    );
  }
}
