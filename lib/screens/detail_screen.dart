import 'package:flutter/material.dart';

import 'bookmark_screen.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = 'DetailScreen';

  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text('Hack The Tool'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => ShortcutContainer(),
        )

        // ListWheelScrollView.useDelegate(
        //   itemExtent: 70,
        //   diameterRatio: 2.5,
        //   childDelegate: ListWheelChildBuilderDelegate(
        //     childCount: 20,
        //     builder: (context, index) => ShortcutContainer(),
        //   ),
        // ),
        );
  }
}

class ShortcutContainer extends StatelessWidget {
  const ShortcutContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => ShortcutPopup(),
        );
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            child: Center(child: Text('Shortcut Result')),
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
  const ShortcutPopup({Key? key}) : super(key: key);

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
                'Shortcut Result ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              Text(
                'All details here lkasjdk asdas k  ld askld s l',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: 40,
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
