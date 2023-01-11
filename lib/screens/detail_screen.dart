import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_the_tool/models/shortcut.dart';

import '../bloc/software_bloc/software_bloc.dart';
import 'bookmark_screen.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = 'DetailScreen';

  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SoftwareBloc, SoftwareState>(
      builder: (context, state) {
        List<ShortcutModel> shortcutList = state.currentSoftware!.shortcutList;
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              title: Text('Hack The Tool'),
              centerTitle: true,
            ),
            body: ListView.builder(
              itemCount: shortcutList.length,
              itemBuilder: (context, index) => ShortcutContainer(
                  shortcutResult: shortcutList[index].shortcutResult ?? '',
                  shortcut: shortcutList[index].shortcut),
            ));
      },
    );
  }
}

class ShortcutContainer extends StatelessWidget {
  final String shortcutResult;
  final String shortcut;
  const ShortcutContainer(
      {Key? key, required this.shortcutResult, required this.shortcut})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => ShortcutPopup(
            shortcut: shortcut,
            shortcutResult: shortcutResult,
          ),
        );
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            child: Text(
              shortcutResult,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            height: 1,
          )
        ],
      ),
    );
  }
}

class ShortcutPopup extends StatelessWidget {
  static const routeName = 'ShortcutPopup';

  final String shortcut;
  final String shortcutResult;
  const ShortcutPopup(
      {Key? key, required this.shortcut, required this.shortcutResult})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      insetPadding: EdgeInsets.all(80),
      backgroundColor: Theme.of(context).primaryColor,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(3),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20.0, right: 20, top: 20, bottom: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                shortcutResult,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                shortcut,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, BookmarkScreen.routeName);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Theme.of(context).primaryColor,
                        const Color.fromARGB(255, 226, 30, 233)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text('Add to Bookmark',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
