import 'package:flutter/material.dart';
import 'package:untitled8/main2.dart';
import 'package:untitled8/main3.dart';
import 'package:untitled8/main4.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage=0;
  final lists=[
    Home(),
    Favourite(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: lists[selectedPage],




      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
          onTap: (value){
          setState(() {
            selectedPage=value;
          });
          },
          backgroundColor: Colors.green,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home", backgroundColor: Colors.white ),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favourite", backgroundColor: Colors.white ),
            BottomNavigationBarItem(icon: Icon(Icons.perm_identity),label: "Profile", backgroundColor: Colors.white ),
       ]),
    );
  }
}
