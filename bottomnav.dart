import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Screen/Heart/heartscreen.dart';
import 'package:instagram/Screen/Home/homescreen.dart';
import 'package:instagram/Screen/Profile/profilescreen.dart';
import 'package:instagram/Screen/Search/searchscreen.dart';
import 'package:instagram/Screen/post/postscreen.dart';
import 'package:instagram/Widget/UI_helper.dart';
class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState()=> _BottomNavScreenState();

}

class _BottomNavScreenState extends State<BottomNavScreen>{
  int currentIndex=0;
  List<Widget>pages=[
    HomeScreen(),
    Searchscreen(),
    Postscreen(),
    HeartScreen(),
    Profilescreen(),
  ];
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items:[
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.plus_app),label: "Post"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart),label: "Heart"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled),label: "Profile")
          ] 
      ) ,
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
    );
  }
}
