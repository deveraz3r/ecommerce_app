import 'package:flutter/material.dart';
import 'package:office_task/utils/app_urls.dart';

class BottomnavigationbarWidget extends StatefulWidget {
  const BottomnavigationbarWidget({super.key});

  @override
  State<BottomnavigationbarWidget> createState() =>
      _BottomnavigationbarWidgetState();
}

class _BottomnavigationbarWidgetState extends State<BottomnavigationbarWidget> {
  int _currentIndex = 0;

  // final List<Widget> _children = [
  //   MarketScreen(),
  //   ContentScreen(),
  //   FeedScreen(),
  //   MessagesScreen(),
  //   ComposeScreen(),
  //   // RadiosScreen(),
  //   ProfileScreen(),
  // ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      currentIndex: _currentIndex,
      fixedColor: Colors.green,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shop,
            size: 30,
            color: Colors.grey,
          ),
          label: 'Market',
          activeIcon: Icon(
            Icons.shop,
            color: Colors.green,
            size: 35,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          ),
          label: 'Search',
          activeIcon: Icon(
            Icons.search,
            color: Colors.green,
            size: 35,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.feed,
            size: 30,
            color: Colors.grey,
          ),
          label: 'Feed',
          activeIcon: Icon(
            Icons.feed,
            color: Colors.green,
            size: 35,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.inbox,
            size: 30,
            color: Colors.grey,
          ),
          label: 'Inbox',
          activeIcon: Icon(
            Icons.inbox,
            color: Colors.green,
            size: 35,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.edit,
            size: 30,
            color: Colors.grey,
          ),
          label: 'Compose',
          activeIcon: Icon(
            Icons.edit,
            color: Colors.green,
            size: 35,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            size: 30,
            color: Colors.grey,
          ),
          label: 'Profile',
          activeIcon: Icon(
            Icons.account_circle,
            color: Colors.green,
            size: 35,
          ),
        ),
      ],
    );
  }
}
