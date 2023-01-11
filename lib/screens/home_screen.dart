import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_the_tool/models/software.dart';

import '/drawer/drawer_widget.dart';
import '../bloc/software_bloc/software_bloc.dart';
import 'software_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SoftwareBloc, SoftwareState>(
      builder: (context, state) {
        List<Software> softwareList = state.softwareList;
        return Scaffold(
          appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              title: const Text('Hack The Tool')),
          drawer: const DrawerWidget(),
          body: ListView(
            shrinkWrap: true,
            children: [
              const DisplayImageContainer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: softwareList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 15 / 16,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) => SoftwareContainer(
                    softwareName: softwareList[index].name,
                    softwareLogo: softwareList[index].image,
                    currentSoftware: softwareList[index],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SoftwareContainer extends StatelessWidget {
  final String softwareName;
  final String softwareLogo;
  final Software currentSoftware;

  const SoftwareContainer(
      {Key? key,
      required this.softwareName,
      required this.softwareLogo,
      required this.currentSoftware})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<SoftwareBloc>().add(OnGetSingleSoftware(currentSoftware));
        Navigator.pushNamed(context, SoftwareDetailScreen.routeName);
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
                softwareLogo,
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
          Expanded(flex: 1, child: Center(child: Text(softwareName)))
        ]),
      ),
    );
  }
}

class DisplayImageContainer extends StatelessWidget {
  const DisplayImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      height: 200,
      width: double.infinity,
      child: Card(
        elevation: 5,
        shadowColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            "assets/images/shortcutImage.jpg",
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
