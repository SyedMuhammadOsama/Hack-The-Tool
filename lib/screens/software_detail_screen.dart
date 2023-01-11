import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../bloc/software_bloc/software_bloc.dart';
import '../widgets/bottom_navigation_widget.dart';
import 'detail_screen.dart';

class SoftwareDetailScreen extends StatelessWidget {
  static const routeName = 'SoftwareDetailScreen';

  const SoftwareDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SoftwareBloc, SoftwareState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: const Text('Hack The Tool'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 248, 244, 244),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SoftwareImageContainer(
                          image: state.currentSoftware!.image),
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(top: 15.0, bottom: 10),
                          child: Text(
                            state.currentSoftware!.name,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      MixCardRow(),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 20.0, bottom: 10),
                  child: const Text(
                    'Introduction',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                AboutSoftware(
                    text:
                        ' iahd adkjasbdi adia da diad ka as sd askd adasnd asdja ka d akd id k k askndkasnd asdasjk as ask k  askxks xk asjksask xk ask xkas x jkas kas kxkas kxas xkas  asjkx kasksabckas '),
                const SeparatorBar(),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 20.0, bottom: 10),
                  child: const Text(
                    'Subscription',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                AboutSoftware(text: '● free'),
                const SeparatorBar(),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 20.0, bottom: 10),
                  child: const Text(
                    'Official Link',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 30.0),
                  child: InkWell(
                    onTap: () async {
                      const url =
                          'https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Text(
                      'https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                // const AboutSoftware(),
                BottomNavigationButton('Shortcuts', () {
                  Navigator.pushNamed(context, DetailScreen.routeName);
                })
              ],
            ),
          ),
        );
      },
    );
  }
}

class SoftwareImageContainer extends StatelessWidget {
  final String? image;
  const SoftwareImageContainer({Key? key, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(110, 80))),
      margin: const EdgeInsets.only(top: 20, bottom: 10),
      height: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.elliptical(110, 80)),
        child: Image.network(
          image ??
              'https://media-thumbs.golden.com/_mG__o3Tbwhdv38nj4fU0faZjvw=/100x100/smart/golden-media.s3.amazonaws.com%2Ftopics%2F300px-Android_Studio_icon.svg.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class MixCardRow extends StatelessWidget {
  const MixCardRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DecoratedCard(
            textQuantity: 'Yes',
            text: 'Mac',
            icon: Icons.apple_outlined,
          ),
          DecoratedCard(
              textQuantity: 'Yes',
              text: 'Windows',
              icon: Icons.window_outlined),
          DecoratedCard(
            textQuantity: ' No',
            text: 'Linux',
            icon: Icons.apple_outlined,
          ),
        ],
      ),
    );
  }
}

class DecoratedCard extends StatelessWidget {
  final String textQuantity;
  final String text;
  IconData icon;
  DecoratedCard(
      {Key? key,
      required this.textQuantity,
      required this.text,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 100,
      child: Card(
        elevation: 3,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Color.fromRGBO(233, 170, 244, 1),
              ),
              padding: const EdgeInsets.all(5),
              height: 55,
              child: Icon(
                icon,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 7),
              child: Text(
                textQuantity,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.merge(const TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall?.merge(
                  const TextStyle(color: Colors.grey, wordSpacing: 1.5)),
            )
          ],
        ),
      ),
    );
  }
}

class SeparatorBar extends StatelessWidget {
  const SeparatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Center(
        child: DottedLine(
          direction: Axis.horizontal,
          lineLength: 50,
          lineThickness: 1,
          dashLength: 4.0,
          dashColor: Theme.of(context).primaryColor,
          dashRadius: 0.0,
          dashGapLength: 4.0,
          dashGapColor: Colors.transparent,
          dashGapRadius: 0.0,
        ),
      ),
    );
  }
}

class AboutSoftware extends StatelessWidget {
  final String text;
  const AboutSoftware({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 25,
      ),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.merge(const TextStyle(height: 1.5, wordSpacing: 1.5)),
      ),
    );
  }
}
