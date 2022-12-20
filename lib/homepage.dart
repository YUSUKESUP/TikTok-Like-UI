import 'package:flutter/material.dart';
import 'package:tiktok_like_ui/pages/home.dart';
import 'package:tiktok_like_ui/pages/inbox.dart';
import 'package:tiktok_like_ui/pages/plus.dart';
import 'package:tiktok_like_ui/pages/profile.dart';
import 'package:tiktok_like_ui/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 int _selectedIndex = 1;
 void _navigatebottomBar(int index){
   setState(() {
     _selectedIndex = index;
   });
 }

 final List<Widget> _pages = [
   UserHomePage(),
   UserSerchPage(),
   UserPlusPage(),
   UserInboxPage(),
   UserProfilePage(),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigatebottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_rounded), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
