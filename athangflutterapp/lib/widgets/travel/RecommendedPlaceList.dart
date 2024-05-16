import 'package:athangflutterapp/screens/model/Places.model.dart';
import 'package:athangflutterapp/screens/model/TravelPlaces.model.dart';
import 'package:athangflutterapp/screens/travel/TravelBhutanDetails.dart';
import 'package:flutter/material.dart';

class RecommendedPlaceList extends StatelessWidget {

  String title;
  String url;
  String description;

  RecommendedPlaceList({
    required this.title,
    required this.description,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TravelBhutanDetails(travel: TravelPlaceCardModel(
            title: title,
            img:url,
            location: description
          ))),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(description),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
