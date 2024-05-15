import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            child: Image.network(
              "https://cdn.pixabay.com/photo/2024/05/05/05/55/goose-8740266_1280.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: const Text(
              'Duck for Sale',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Price: Nu.120',
                style: TextStyle(fontSize: 32),
              ),
              Icon(Icons.shopping_cart)
            ],
          ),
          Container(
            child: const Text(
              'This is the description of a duck being sold on the platform',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
