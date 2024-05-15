import 'package:flutter/material.dart';

class PlantSmallCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2024/01/14/12/30/baseball-8507868_1280.jpg",
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name of the product',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text('Desription', style: TextStyle(fontSize: 16),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
