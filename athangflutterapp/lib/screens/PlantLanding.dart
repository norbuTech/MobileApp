import 'package:athangflutterapp/widgets/plant_landing/BannerCard.dart';
import 'package:athangflutterapp/widgets/plant_landing/LatestProductCard.dart';
import 'package:athangflutterapp/widgets/plant_landing/RecentViewCard.dart';
import 'package:athangflutterapp/widgets/plant_landing/RecommendedPlants.dart';
import 'package:athangflutterapp/widgets/plant_landing/SearchBar.plant.dart';
import 'package:flutter/material.dart';

class PlantLanding extends StatelessWidget {
  const PlantLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions:[
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15), // Add some padding for better alignment
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
            children: [
              ClipOval(
                child: Image.network(
                "https://cdn.pixabay.com/photo/2023/04/05/16/08/hedgehog-fly-7901862_1280.jpg",
                height: 42,
                width: 42,
                fit: BoxFit.cover,
              ),),
              
              const SizedBox(height: 0), // Add some space between the image and text
              const Text(
                ' Tenzin Norbu',
                style: TextStyle(fontSize: 11),
              ),        
              ],
            ),
          ),
        ],

        title: Container(
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
              Text('Bhutan Insurance Limited!', style: TextStyle(fontSize: 12),),

            ]
          ),
        ) 
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
              SearchBarPlant(),
              BannerCard(),
              RecommendedPlants(),
              RecentViewCard(),
              LatestProductCard()
          ],
        ),
      ),
    );
  }
}