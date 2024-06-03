import 'package:flutter/material.dart';
import 'package:flutter_mapp/hoc/side_bar.dart';
import 'package:flutter_mapp/plugins/local_shared_preferences.dart';
import 'package:flutter_mapp/screens/account/account_screen.dart';
import 'package:flutter_mapp/screens/landing/home_screen.dart';
import 'package:flutter_mapp/screens/splash_screen.dart';
import 'package:flutter_mapp/screens/transaction/add_transaction.dart';
import 'package:flutter_mapp/widgets/account/saving_account.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 0;

  List<String> titles = ['Home', 'Account', 'AddTransaction'];
  List<Widget> screens = [];

    void _onItemTapped(int index) {
    if (index == 2) {
      // If AddTransaction is tapped, push the AddTransactionForm screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddTransaction()),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }


  @override
  void initState() {
    super.initState();
    screens = [
      HomeScreen(),
      AccountScreen(), 
    ];
  }


  Future<void> logoutUser() async {
    await setTokenToBlank();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => SplashScreen()));
  }

  Future<void> savingAccount() async {
    // await setTokenToBlank();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => SavingAccount()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEA6C43),
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 40,
              fit: BoxFit.contain,
            ),
          ],
        ),
        actions: [
          const SizedBox(
            width: 40, // Adjust the width as needed for spacing
            child: Icon(Icons.notifications),
          ),
          GestureDetector(
            onTap: () {
              savingAccount();
            },
            child: ClipOval(
              child: Image.asset(
                'assets/images/photo.jpg',
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.power_settings_new), // Logout Icon
            onPressed: () {
              logoutUser();
            },
          ),
          const SizedBox(width: 8), // Adjust the width as needed for spacing
        ],
      ),
      drawer: SideBar(),
      body: RefreshIndicator(
        onRefresh: () async {
          print('here');
        },
        child: SingleChildScrollView(
          child: screens[_selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Accounts'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'AddTransaction'),
        ],
      ),
    );
  }
}
