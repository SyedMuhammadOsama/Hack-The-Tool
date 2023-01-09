import 'package:flutter/material.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Theme.of(context).primaryColor,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          onTap: () {},
          title: Text('Logout', style: Theme.of(context).textTheme.bodyLarge),
          leading: Icon(
            Icons.logout_outlined,
            size: 25,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
