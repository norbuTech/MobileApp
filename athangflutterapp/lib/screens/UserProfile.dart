import 'package:athangflutterapp/widgets/plant_landing/SearchBar.plant.dart';
import 'package:athangflutterapp/widgets/sample/ProfileBanner.dart';
import 'package:flutter/material.dart';

class Userprofile extends StatelessWidget {
  const Userprofile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
          Icon(Icons.menu), // Home Icon
            ClipOval(
              child: Image.network(
                "https://media.istockphoto.com/id/1485546774/photo/bald-man-smiling-at-camera-standing-with-arms-crossed.jpg?s=1024x1024&w=is&k=20&c=zvw6qDmYHmIvvCbEn2ZUF0tdSbKPnEWRsVAzd9g4hCM=",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              'Hi, Tenzin Norbu',
              style: TextStyle(fontSize: 11),
            ),
            const Spacer(),
            const Text(
              'mBIL', // Text between image and icons
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const Spacer(flex: 1), // Spacer to push icons to the right

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
          // Add actions if needed
        
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ProfileBanner(),
          
            // Uncomment these when you have implemented them
            // RecommendedPlants(),
            // RecentViewCard(),
            // LatestProductCard()
          ],
        ),
      ),
    );
  }
}
