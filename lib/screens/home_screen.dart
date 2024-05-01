import 'package:flutter/material.dart';
import 'package:zoom_clone/screens/history_meeting_screen.dart';
import 'package:zoom_clone/utils/colors.dart';

import 'meeting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentindex = 0;

  List<Widget> pages = [
    MeetingScreen(),
    const HistoryMeetingScreen(),
    const Text('data'),
    const Text('setting'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          title: const Text('Meet & Chat'),
          centerTitle: true,
        ),
        body: pages[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          onTap: (value) {
            print(value);
            setState(() {
              _currentindex = value;
            });
          },
          backgroundColor: footerColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 14.0,
          items: [
            Bnv(const Icon(Icons.comment_bank), 'Meet & Char'),
            Bnv(const Icon(Icons.lock_clock), 'Meeting'),
            Bnv(const Icon(Icons.person_outline), 'Contects'),
            Bnv(const Icon(Icons.settings_outlined), 'Setting'),
          ],
        ));
  }

  BottomNavigationBarItem Bnv(Icon icon, String lable) {
    return BottomNavigationBarItem(icon: icon, label: lable);
  }
}
