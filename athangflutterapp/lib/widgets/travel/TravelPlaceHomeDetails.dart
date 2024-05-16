import 'package:athangflutterapp/screens/model/TravelPlaces.model.dart';
import 'package:athangflutterapp/screens/travel/TravelBhutanDetails.dart';
import 'package:flutter/material.dart';

class TravelPlacesHomeDetails extends StatelessWidget {
  String title;
  String url;
  String location;

  TravelPlacesHomeDetails({
    required this.title,
    required this.location,
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
            img: url,
            location: location
            ))),
        );
      },
      child: Container(
        height: 300,
        width: 400,
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                url,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16),
          color: Colors.blueAccent,
        ),
        child: Container(
          decoration: const  BoxDecoration(color: Color.fromRGBO(0, 0, 0, .2)),
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          height: 100,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.room, color: Colors.white,),
                          Text(
                            location,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text('4.7', style: TextStyle(
                    color:Colors.white
                  ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
