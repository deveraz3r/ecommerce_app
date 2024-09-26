import 'package:office_task/utils/app_urls.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    MarketScreen(),
    ContentScreen(),
    FeedScreen(),
    MessagesScreen(),
    ComposeScreen(),
    // RadiosScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
