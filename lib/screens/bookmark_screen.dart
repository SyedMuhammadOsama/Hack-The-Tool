import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bookmark_bloc/bookmark_bloc.dart';
import '../models/bookmark.dart';

class BookmarkScreen extends StatelessWidget {
  static const routeName = 'BookmarkScreen';
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookmarkBloc, BookmarkState>(
      builder: (context, state) {
        List<Bookmark>? allBookmark = state.allBookmark;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: Text('Hack The Tool'),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemCount: allBookmark?.length,
            itemBuilder: (context, index) =>
                BookmarkContainer(bookmark: allBookmark?[index]),
          ),
        );
      },
    );
  }
}

class BookmarkContainer extends StatelessWidget {
  final Bookmark? bookmark;

  const BookmarkContainer({Key? key, required this.bookmark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookmarkBloc, BookmarkState>(
      builder: (context, state) {
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
            onDismissed: (direction) {
              context.read<BookmarkBloc>().add(OnDeleteBookmark(bookmark!));
            },
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
                        bookmark?.softwareName ?? '',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(bookmark?.shortcutResult ?? '',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black)),
                    SizedBox(height: 10),
                    Text(
                      bookmark?.shortcut ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
