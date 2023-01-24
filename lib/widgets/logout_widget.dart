import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_the_tool/auth/auth_bloc.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Card(
          shadowColor: Theme.of(context).primaryColor,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ListTile(
              onTap: () {
                context.read<AuthBloc>().add(AuthEvent.onLogout());
              },
              title:
                  Text('Logout', style: Theme.of(context).textTheme.bodyLarge),
              leading: Icon(
                Icons.logout_outlined,
                size: 25,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        );
      },
    );
  }
}
