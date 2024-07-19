import 'package:flutter/material.dart';

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
        )
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomePage(),
        },
      ),
    );
  }
}
