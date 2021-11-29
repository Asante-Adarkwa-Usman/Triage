import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import 'appointments/appointment_view.dart';
import 'chat/chat_view.dart';
import 'home/home_view.dart';
import 'profile/profile_view.dart';

class ParentView extends StatefulWidget {
  const ParentView({Key? key}) : super(key: key);

  @override
  State<ParentView> createState() => _ParentViewState();
}

class _ParentViewState extends State<ParentView> {
  int _currentIndex = 0;
  final List<Widget> _views = [
    const HomeView(),
    const AppointmentView(),
    const ChatView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: _views,
        index: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade300,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(85, 49, 78, 0.81),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              tooltip: 'Homescreen'),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.calendar_alt),
              label: 'Appointments',
              tooltip: 'Set Appointments'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_outlined),
              label: 'Chats',
              tooltip: 'Chat Sessions'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              tooltip: 'Profile Settings'),
        ],
      ),
    );
  }
}
