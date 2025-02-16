import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/UserProvider.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data'),
      ),
      body: ListView.builder(
        itemCount: userProvider.userData.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(userProvider.userData[index].name),
          subtitle: Text(userProvider.userData[index].company.name),
          leading: Text(userProvider.userData[index].id.toString()),
          trailing: Text(
              '${userProvider.userData[index].address.city}   ${userProvider.userData[index].address.geo.lat}'),
        ),
      ),
    );
  }
}
