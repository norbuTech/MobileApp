import 'package:flutter/material.dart';
import 'package:flutter_statefullapp_demo/widgets/LoginForm.dart';

class LoginTask extends StatefulWidget {
  const LoginTask({super.key});

  @override
  State<LoginTask> createState() => _LoginTaskState();
}

class _LoginTaskState extends State<LoginTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .50,
              ),
            ),
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              "https://cdn.pixabay.com/photo/2017/08/28/20/33/tigers-nest-2691190_1280.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 36),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          "https://media.istockphoto.com/id/1485546774/photo/bald-man-smiling-at-camera-standing-with-arms-crossed.jpg?s=1024x1024&w=is&k=20&c=zvw6qDmYHmIvvCbEn2ZUF0tdSbKPnEWRsVAzd9g4hCM=",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text('Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      const Text('Enter details to login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Container(
                    height: 300,
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              spreadRadius: 4,
                              blurStyle: BlurStyle.normal)
                        ]),
                    child: const Loginform(),
                  ),
  
          
                ],
            )
          ),
        ],
      ),
      
    ));
  }
}
