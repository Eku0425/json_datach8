import 'package:flutter/material.dart';
import 'package:json_datach8/User_info/provider/UserProvider.dart';
import 'package:json_datach8/User_info/view/User_page.dart';

import 'package:provider/provider.dart';

import 'json_parsing/provider/home_provider.dart';
import 'json_parsing/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => UserPage(),
          '/home': (context) => HomePage(),
        },
      ),
    );
  }
}
