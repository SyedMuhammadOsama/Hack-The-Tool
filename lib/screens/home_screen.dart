import 'package:flutter/material.dart';
import 'package:hack_the_tool/screens/detail_screen.dart';

import '../drawer/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Hack The Tool'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => SoftwareContainer(),
        ),
      ),
    );
  }
}

class SoftwareContainer extends StatelessWidget {
  const SoftwareContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailScreen.routeName);
      },
      borderRadius: BorderRadius.circular(20),
      child: Card(
        elevation: 3,
        shadowColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(width: 4, color: Theme.of(context).primaryColor),
        ),
        child: Column(children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.network(
                'https://w7.pngwing.com/pngs/466/228/png-transparent-android-studio-integrated-development-environment-logo-android-studio-logo-computer-program.png',
                fit: BoxFit.cover,
                width: 200,
              ),
            ),
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 1,
            height: 1,
          ),
          Expanded(flex: 1, child: Center(child: Text('Android Studio')))
        ]),
      ),
    );
  }
}
