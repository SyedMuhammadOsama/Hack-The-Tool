import 'package:flutter/material.dart';
import 'package:hack_the_tool/screens/bookmark_screen.dart';

import '../screens/home_screen.dart';
import '../widgets/logout_widget.dart';
import 'drawer_header_widget.dart';
import 'drawer_list_tile.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: ListView(
        children: [
          const DrawerHeaderWidget(),
          Container(
            height: 30,
          ),
          DrawerListTile(
              text: 'Home',
              icon: Icons.home_outlined,
              navigator: () {
                Navigator.popAndPushNamed(context, HomeScreen.routeName);
              }),
          DrawerListTile(
              text: 'Bookmark',
              icon: Icons.bookmark_border,
              navigator: () {
                Navigator.popAndPushNamed(context, BookmarkScreen.routeName);
              }),
          const LogoutWidget()
        ],
      ),
    );
  }
}
