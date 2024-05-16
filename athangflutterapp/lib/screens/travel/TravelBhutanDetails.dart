import 'package:athangflutterapp/screens/model/TravelPlaces.model.dart';
import 'package:flutter/material.dart';

class TravelBhutanDetails extends StatelessWidget {
  TravelPlaceCardModel travel;

  TravelBhutanDetails({
    required this.travel
    });

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(travel.title),
        ),
        body: Container(
          padding: EdgeInsets.only(top:16, left:16, right:16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.network(
                    travel.img,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    travel.location,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    'Location description in an descriptive way',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
