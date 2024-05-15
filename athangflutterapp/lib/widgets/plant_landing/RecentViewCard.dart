import 'package:athangflutterapp/widgets/plant_landing/PlantSmallCard.dart';
import 'package:flutter/material.dart';

class RecentViewCard extends StatelessWidget {
  const RecentViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.only(left: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Recent Viewed',
              style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          Container(
            margin: const EdgeInsets.only(top:8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PlantSmallCard(),
                  PlantSmallCard(),
                  PlantSmallCard(),
                  PlantSmallCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}