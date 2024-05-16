import 'package:athangflutterapp/screens/model/Places.model.dart';
import 'package:flutter/material.dart';

import 'RecommendedPlaceList.dart';

class RecommendedPlaces extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:16),
      padding:const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended Places',
                style: TextStyle(fontSize: 24),
              ),
              Text('View more'),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top:8),
            child: Column(
              children: placesList.map((PlaceCardModel el){
                return RecommendedPlaceList(
                  title:el.title,
                  description: el.description,
                  url: el.img,
                  );
              }).toList(),
            ),
          )
        ],
      )
    );
  }
}
