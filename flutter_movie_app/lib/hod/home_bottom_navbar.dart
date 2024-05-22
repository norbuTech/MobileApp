import 'package:flutter/material.dart';
import 'package:flutter_movie_app/screens/movie/categories_movie_screen.dart';
import 'package:flutter_movie_app/screens/movie/home_movie_screen.dart';
import 'package:flutter_movie_app/screens/movie/trending_movie_screen.dart';

class HomeBottomNavbar extends StatefulWidget {
  const HomeBottomNavbar({super.key});

  @override
  State<HomeBottomNavbar> createState() => _HomeBottomNavbarState();
}

class _HomeBottomNavbarState extends State<HomeBottomNavbar> {
  int _selectedIndex = 0;

  // List<String> titles = ['Home', 'Trending', 'Categories'];
  List<Widget> screens = [
    HomeMovieScreen(),
    TrendingMovieScreen(),
    const CategoriesMovieScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
          const Icon(Icons.menu), // Home Icon
            ClipOval(
              child: Image.asset(
                'assets/images/photo.jpg',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
          
            const SizedBox(width: 8),
            const Text(
              'Hi, Tenzin Norbu',
              style: TextStyle(fontSize: 11),
            ),
            // Spacer to push icons to the right
          ],
        ),
        actions: const [
          SizedBox(
            width: 40, // Adjust the width as needed for spacing
            child: Icon(Icons.notifications), // Bell Icon
          ),
          SizedBox(
            width: 40, // Adjust the width as needed for spacing
            child: Icon(Icons.logout), // Logout Icon
          ),
        ],
      ),
        
      body: SingleChildScrollView(
        child: screens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (val){
           setState(() {
             _selectedIndex = val;
           });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Trending'),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: 'Categories'),
        ],
      ),
    );
  }
}
