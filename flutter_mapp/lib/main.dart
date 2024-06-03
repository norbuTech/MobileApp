
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapp/firebase_options.dart';
import 'package:flutter_mapp/hoc/home_layout.dart';
import 'package:flutter_mapp/plugins/firebase_api.dart';
import 'package:flutter_mapp/plugins/local_notifications.dart';
import 'package:flutter_mapp/screens/Temp_screen.dart';
import 'package:flutter_mapp/screens/account/add_account_screen.dart';
import 'package:flutter_mapp/screens/splash_screen.dart';
import 'package:flutter_mapp/screens/transaction/add_transaction.dart';
import 'package:flutter_mapp/widgets/account/saving_account.dart';

import 'plugins/local_shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotification.initialize();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  // await FirebaseApi().initNotifications();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense-Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: SplashScreen(),
      // home:AddTransaction()
      // home: TempScreen(),
      // home: HomeLayout(),
      home:SavingAccount()
    );
  }
}
