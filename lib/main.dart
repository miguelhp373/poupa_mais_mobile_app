import 'package:flutter/material.dart';
import 'package:poupa_mais_mobile_app/app/defaults/constants.dart';
//firebase dependecies
import 'package:firebase_core/firebase_core.dart';

import 'package:poupa_mais_mobile_app/app/modules/home_page/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
        primaryColor: primaryColor,
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: textPrimaryColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/home_page',
      routes: {
        '/home_page': (_) => const HomePage(),
      },
    );
  }
}
