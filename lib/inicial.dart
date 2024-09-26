import 'package:flutter/material.dart';
import 'package:flutter_application_1/about.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/listview.dart';
import 'package:flutter_application_1/login.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({super.key});

  @override
  State<InicialPage> createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {

  int _currentIndex = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [LoginPage(), HomePage(), AboutPage(), ListPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor:const Color.fromARGB(255, 89, 91, 223),
        selectedItemColor: const Color.fromARGB(255, 255, 0, 170),
        unselectedItemColor: Color.fromARGB(255, 0, 0, 0),
        
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "login"),
          BottomNavigationBarItem(icon: Icon(Icons.house), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: "about"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "list")
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}