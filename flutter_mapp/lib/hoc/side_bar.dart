import 'package:flutter/material.dart';
import 'package:flutter_mapp/base/style/text_styles.dart';

class SideBar extends StatelessWidget {
  // const SideBar({Key key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4, // Adjust the width as needed
      child: Drawer(
        // Set background color here
        // color: Colors.blueGrey, // Example color

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 120, // Adjust the height as needed
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color(0xFFEA6C43),
                  ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/images/photo.jpg', // Path to your image asset
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Tenzin Norbu',
                      style: TypoStyles().kSectionHeader,
                    ),
                  ],
                ),
              ),
            ),
              ListTile(
                leading: const Icon(Icons.home), // Icon for "Home"
                title: Text('Home', style: TypoStyles().kSectionHeader), // Text for "Home"
                onTap: () {
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HomeScreen()),
                  // );
                },
              ),
              ListTile(
                leading: Icon(Icons.person), // Icon for "Profile Update"
                title: Text('Profile Update',
                style: TypoStyles().kSectionHeader),
                onTap: () {
                  // Implement drawer item 1 functionality
                },
              ),
              ListTile(
                leading: Icon(Icons.vpn_key), // Icon for "Forgot T-Pin"
                title: Text('Forgot T-Pin', style: TypoStyles().kSectionHeader),
                onTap: () {
                  // Implement drawer item 2 functionality
                },
              ),
              ListTile(
                leading: Icon(Icons.lock), // Icon for "Change Password"
                title: Text('Change Password',style: TypoStyles().kSectionHeader),
                onTap: () {
                  // Implement drawer item 3 functionality
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
