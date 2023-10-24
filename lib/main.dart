import 'package:flutter/material.dart';
import 'package:practice/home.dart';
import 'package:practice/search.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Homework';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Color.fromARGB(255, 40, 36, 36),
        scaffoldBackgroundColor: Colors.black,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Manrope',
              bodyColor: Color.fromARGB(255, 255, 255, 255),
              displayColor: Color.fromARGB(255, 255, 255, 255),
            ),
      ),
      title: MyApp._title,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List _screens = [HomePage(), SearchPage()];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            onTap: _onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.black,
            selectedItemColor: Color.fromARGB(255, 255, 178, 103),
            unselectedItemColor: Colors.blueGrey[50],
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.grid_view_outlined), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_outlined), label: '')
            ]));
  }
}
