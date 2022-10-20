import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("File Scan"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("images/drawer.png"),
                      fit: BoxFit.cover)),
              child: Text(''),
            ),
            ListTile(
              leading: const Icon(
                Icons.folder,
              ),
              title: const Text('All docs'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.corporate_fare,
              ),
              title: const Text('About us'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.visibility,
              ),
              title: const Text('Dark mode'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.book,
              ),
              title: const Text('Tutorials'),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.star_rate,
              ),
              title: const Text('Rate us'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.share,
              ),
              title: const Text('Share this app'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.privacy_tip,
              ),
              title: const Text('Privacy'),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.camera,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                //getImage();
              },
              icon: const Icon(
                Icons.image,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
