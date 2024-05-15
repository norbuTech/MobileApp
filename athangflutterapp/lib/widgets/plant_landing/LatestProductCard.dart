import 'package:athangflutterapp/widgets/plant_landing/MediumPlantCard.dart';
import 'package:flutter/material.dart';

class LatestProductCard extends StatelessWidget {
  const LatestProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: const Text(
              'Latest Products',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          MediumPlantCard(title:"Image Title 1",url:"https://cdn.pixabay.com/photo/2024/05/09/12/06/fruit-8750860_1280.jpg"),
          MediumPlantCard(title:"Tenzin 2"),
          MediumPlantCard(title:"BIL Image 3"),
      
        ],
      ),
    );
  }
}
