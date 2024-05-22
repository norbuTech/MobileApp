import 'package:flutter/material.dart';
import 'package:flutter_statefullapp_demo/widgets/SignUpForm.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  child: const Column(
                    children: [
                      Text('Enter your details to sign up',
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
                    child: const SignUpForm(),
                  ),

          
                ],
            )
          ),
        ],
      ),
      
    ));
  }
}
