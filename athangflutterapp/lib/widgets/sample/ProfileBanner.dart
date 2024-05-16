import 'package:flutter/material.dart';

class ProfileBanner extends StatelessWidget {
  const ProfileBanner({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(top: 15),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image.network(
              "https://cdn.pixabay.com/photo/2017/09/07/08/53/money-2724237_1280.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ], 
      ),
    );
  }
}
