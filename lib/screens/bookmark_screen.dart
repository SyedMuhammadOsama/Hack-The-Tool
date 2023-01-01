import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  static const routeName = 'BookmarkScreen';
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Hack The Tool'),
        centerTitle: true,
      ),
      // backgroundColor: const Color.fromARGB(255, 234, 184, 242),
      body: ListView.builder(
        itemBuilder: (context, index) => BookmarkContainer(),
      ),
    );
  }
}

class BookmarkContainer extends StatelessWidget {
  const BookmarkContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.startToEnd,
        background: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 234, 184, 242),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.delete_outline,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        onDismissed: (direction) {},
        child: Card(
          elevation: 5,
          shadowColor: Theme.of(context).primaryColor,
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Android Studio',
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 5),
                Text('Shortcut Result'),
                SizedBox(height: 5),
                Text(
                  'Ctrl + S',
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
