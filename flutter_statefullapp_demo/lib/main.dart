import 'package:flutter/material.dart';
import 'package:flutter_statefullapp_demo/screens/AddTask.dart';
import 'package:flutter_statefullapp_demo/screens/LoginTask.dart';
import 'package:flutter_statefullapp_demo/screens/SignUp.dart';
import 'package:flutter_statefullapp_demo/screens/TaskList.dart';
import 'package:flutter_statefullapp_demo/screens/TodoHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Logintask(),
      // home is no longer required when using named routes
      // we must define the initial route for the app
      // initial route defines which route to open when app start
      initialRoute: '/',
      // routes is an object that holds path which defines which screen
      // to open when we navigated through name
      routes: {
        '/': (context)=> const LoginTask(),
        // '/home': (context) => const Todohome(),
        '/home': (context) => TaskList(),
        // '/task-add': (context) => AddTask(),
        '/signup': (context)=> const SignUp()
      },
    );
  }
}
