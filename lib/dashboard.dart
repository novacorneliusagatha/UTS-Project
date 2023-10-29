import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utsproject/profil.dart';

class DasboardPage extends StatefulWidget {
  const DasboardPage({super.key});

  @override
  State<DasboardPage> createState() => _DasboardPageState();
}

class _DasboardPageState extends State<DasboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.zero, children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(50))),
          child: Column(
            children: [
              const SizedBox(height: 50),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                title: Text('Hi Nova',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white)),
                subtitle: Text('Selamat Datang :)',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white54)),
                trailing: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("images/admin.png"),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ))),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilPage(),
                      ))
                },
                child: Text(
                  'My Profile',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(100))),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 40,
              mainAxisSpacing: 30,
              children: [
                itemDashboard('Profil', CupertinoIcons.profile_circled,
                    Colors.deepOrange),
                itemDashboard(
                    'Musik', CupertinoIcons.music_albums, Colors.green),
                itemDashboard('Teman', CupertinoIcons.person_2, Colors.purple),
                itemDashboard(
                    'Hobi', CupertinoIcons.sportscourt, Colors.indigo),
                itemDashboard(
                    'Saran', CupertinoIcons.chat_bubble_2, Colors.brown),
                itemDashboard(
                    'Tambah', CupertinoIcons.add_circled, Colors.teal),
                itemDashboard(
                    'Tentang', CupertinoIcons.question_circle, Colors.blue),
                itemDashboard(
                    'Kontak', CupertinoIcons.phone, Colors.pinkAccent),
              ],
            ),
          ),
        )
      ]),
    );
  }

  itemDashboard(String title, IconData iconData, Color background) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).primaryColor.withOpacity(.2),
                  spreadRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: background, shape: BoxShape.circle),
              child: Icon(iconData, color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      );
}

/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.zero, children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(50))),
          child: Column(
            children: [
              const SizedBox(height: 50),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                title: Text('Hi Nova',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white)),
                subtitle: Text('Welcome Back',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white54)),
                trailing: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("images/admin.png"),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(100))),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                itemDashboard(
                    'Videos', CupertinoIcons.play_rectangle, Colors.deepOrange)
              ],
            ),
          ),
        )
      ]),
    );
  }

  itemDashboard(String title, IconData iconData, Color background) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).primaryColor.withOpacity(.2),
                  spreadRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: background, shape: BoxShape.circle),
              child: Icon(iconData, color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      );
}
*/