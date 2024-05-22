import 'package:athangflutterapp/screens/model/TravelPlaces.model.dart';
import 'package:athangflutterapp/widgets/travel/RecommendedPlaces.dart';
import 'package:athangflutterapp/widgets/travel/TravelPlacesHome.dart';
import 'package:flutter/material.dart';


class TravelBhutanHome extends StatelessWidget {
  const TravelBhutanHome({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children:[ 
            // ...travelList.map((TravelPlaceCardModel el){
            //     return TravelPlacesHome(
            //       url: el.img
            //       );
            //   }).toList(),
          // children:[
            const TravelPlacesHome(),
            RecommendedPlaces()
          ],
        ),
      )
    );
  }
}