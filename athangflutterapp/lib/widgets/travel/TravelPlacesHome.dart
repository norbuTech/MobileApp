import 'package:athangflutterapp/screens/model/TravelPlaces.model.dart';
import 'package:athangflutterapp/widgets/travel/TravelPlaceHomeDetails.dart';
import 'package:flutter/material.dart';

class TravelPlacesHome extends StatelessWidget {
  
  const TravelPlacesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Places',
                  style: TextStyle(fontSize: 24),
                ),
                Text('View more'),
              ],
            ),
          ),
          
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // children: [
                // TravelPlacesHomeDetails(), 
                // TravelPlacesHomeDetails(),                
                // TravelPlacesHomeDetails() 
                //                 
                // ],
                children: travelList.map((TravelPlaceCardModel el){
                return TravelPlacesHomeDetails(
                  title:el.title,
                  location: el.location,
                  url: el.img,
                  );
              }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
