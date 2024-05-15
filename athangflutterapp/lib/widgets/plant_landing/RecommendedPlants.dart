import 'package:athangflutterapp/widgets/plant_landing/PlantCard.dart';
import 'package:flutter/material.dart';

class RecommendedPlants extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
              child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,

            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  
                  child: Text('Motor',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text('Fire', style: TextStyle(fontSize: 20)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text('Loan', style: TextStyle(fontSize: 20)),
                ),
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text('Miscellaneous', style: TextStyle(fontSize: 20)),
                ),
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text('Outdoor', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
          ),
          Container(
            padding: const EdgeInsets.only(left:16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                    PlantCard(),
                    PlantCard(),
                    PlantCard(),
                    PlantCard(),
                    PlantCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
