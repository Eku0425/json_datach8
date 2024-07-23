import 'package:flutter/material.dart';

import '../User_info/view/User_page.dart';
import '../json_parsing/view/home_page.dart';
import '../post_data/view/Post_Page.dart';

class MyRoutes {
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    '/': (context) => const PostsScreen(),
    '/user': (context) => const UserPage(),
    '/home': (context) => const HomePage(),
  };
}
