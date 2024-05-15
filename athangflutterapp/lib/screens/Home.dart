import 'package:athangflutterapp/widgets/ProductCard.dart';
import 'package:athangflutterapp/widgets/SmallProductCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: const Text('Hello Tenzin!')),
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductCard(),
                SmallProductCard(),
              ],
            )),
      ),
    );
  }
}
