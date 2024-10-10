import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyCV(),
  ));
}

class MyCV extends StatelessWidget {
  const MyCV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My CV',
          style: TextStyle(color: Colors.white), 
        ),
        backgroundColor: Colors.lightBlue, 
        iconTheme: const IconThemeData(color: Colors.white), 
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Center( 
                child: Text(
                  'CV Sections',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.circle, color: Colors.grey, size: 10), 
              title: const Text('Education'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.circle, color: Colors.grey, size: 10), 
              title: const Text('Skills'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.circle, color: Colors.grey, size: 10), 
              title: const Text('Projects'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.circle, color: Colors.grey, size: 10), 
              title: const Text('Experience'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 228, 225, 225), 
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30), 
            Center( 
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blueAccent, width: 4), 
                ),
                child: const ClipOval(
                  child: Image(
                    image: AssetImage('assets/picture.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), 
            // Personal Info
            const Text(
              'Mara Joy Lontok',
              style: TextStyle(fontSize: 29),
            ), 
            const Text(
              '0905-591-1554',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              '22-02744@g.batstate-u.edu.ph',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20), 
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 246, 246), 
                border: Border.all(color: Colors.black),
              ),
              child: const Text(
                'Professional goals\nTo be a real programmer and to be an expert',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
