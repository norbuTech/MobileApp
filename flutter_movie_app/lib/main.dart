import 'package:flutter/material.dart';
import 'package:flutter_movie_app/hod/home_bottom_navbar.dart';
import 'package:flutter_movie_app/providers/movie_provider.dart';
import 'package:flutter_movie_app/screens/movie/index_movie.dart';
import 'package:flutter_movie_app/widgets/signin.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // providers should be categorized well to keep track and separate
        // all the modules and their respective variables
        ChangeNotifierProvider(create: (context)=> MovieProvider())
      ],
    
    child:  MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const Index(),
      initialRoute: '/',
      // routes is an object that holds path which defines which screen
      // to open when we navigated through name
      routes: {
        '/': (context)=> const IndexMovie(),
        '/sign-in': (context) => const SignIn(),
        '/home': (context)=> const HomeBottomNavbar()
      
      },
    ),
    );
  }
}

