import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right:16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: 200,
            margin: const EdgeInsets.only(bottom:16),
            child: Image.network(
              "https://media.istockphoto.com/id/1478431022/photo/cars-for-sale-stock-lot-row.jpg?s=1024x1024&w=is&k=20&c=9Ia8cojAjkfVgft22bC_pt5NDko-_pWIu4JOYsjnAuY=",
              fit: BoxFit.cover,
            ),
          ),
          Text('Motor', style: TextStyle(fontSize: 16),),
          Text('Private Car',style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
