import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

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
            height: 200,
            child: Image.network(
              "https://media.istockphoto.com/id/1470986827/photo/businessman-using-laptop-with-ai-tech-auto-insurance-service-concept-travel-insurance-data.jpg?s=1024x1024&w=is&k=20&c=oFtIm0Qn8mdCzn2HPpi44XqC9F5XQjt9nq0ABs94J4k=",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 2,
                color: Colors.green,
              ),
            ),
            child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", style: TextStyle(fontSize: 12,),),
            ]
          ),
          )
        ], 
      ),
    );
  }
}
