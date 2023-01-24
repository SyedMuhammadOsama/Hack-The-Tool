import 'package:dotted_line/dotted_line.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_the_tool/models/bookmark.dart';
import 'package:hack_the_tool/models/shortcut.dart';

import '../bloc/bookmark_bloc/bookmark_bloc.dart';
import '../bloc/software_bloc/software_bloc.dart';
import '../models/software.dart';
import 'Signin_screen.dart';

class DetailScreen extends StatefulWidget {
  static const routeName = 'DetailScreen';

  DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<ShortcutModel> searchList = [];
  TextEditingController searchController = TextEditingController();

  List<ShortcutModel> search(String key, List<ShortcutModel> _shortcutList) {
    List<ShortcutModel> result = [];
    if (key != '') {
      for (ShortcutModel item in _shortcutList) {
        if (item.shortcutResult!.toLowerCase().contains(key.toLowerCase())) {
          result.add(item);
        }
      }
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SoftwareBloc, SoftwareState>(
      builder: (context, state) {
        Software currentSoftware = state.currentSoftware!;
        List<ShortcutModel> shortcutList = state.currentSoftware!.shortcutList;
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              title: Text('Hack The Tool'),
              centerTitle: true,
            ),
            body: ListView(
              shrinkWrap: true,
              children: [
                SearchFieldWidget(
                  onChanged: (value) {
                    setState(() {
                      searchList = search(value, shortcutList);
                    });
                    print(shortcutList[0].shortcutResult);
                  },
                  controller: searchController,
                  hint: 'Search...',
                ),
                if (searchController.text.isEmpty)
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: shortcutList.length,
                    itemBuilder: (context, index) => ShortcutContainer(
                        softwareName: currentSoftware.name,
                        shortcutResult:
                            shortcutList[index].shortcutResult ?? '',
                        shortcut: shortcutList[index].shortcut),
                  ),
                if (searchController.text.isNotEmpty)
                  searchList.isNotEmpty
                      ? ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: searchList.length,
                          itemBuilder: (context, index) => ShortcutContainer(
                              softwareName: currentSoftware.name,
                              shortcutResult:
                                  searchList[index].shortcutResult ?? '',
                              shortcut: searchList[index].shortcut),
                        )
                      : Center(
                          child: Text('Item not found...'),
                        ),
              ],
            ));
      },
    );
  }
}

class ShortcutContainer extends StatelessWidget {
  final String shortcutResult;
  final String shortcut;
  final String softwareName;
  const ShortcutContainer(
      {Key? key,
      required this.shortcutResult,
      required this.shortcut,
      required this.softwareName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => ShortcutPopup(
            softwareName: softwareName,
            shortcut: shortcut,
            shortcutResult: shortcutResult,
          ),
        );
      },
      child: Column(
        children: [
          // Divider(
          //   color: Theme.of(context).primaryColor,
          //   height: 1,
          // ),
          Separator(),
          Container(
            padding: EdgeInsets.all(25),
            child: Text(
              shortcutResult,
              textAlign: TextAlign.center,
            ),
          ),
          // Divider(
          //   color: Theme.of(context).primaryColor,
          //   height: 1,
          // )
        ],
      ),
    );
  }
}

class Separator extends StatelessWidget {
  const Separator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: DottedLine(
          direction: Axis.horizontal,

          // lineLength:,
          lineThickness: 1,
          dashLength: 1.5,
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

class ShortcutPopup extends StatefulWidget {
  static const routeName = 'ShortcutPopup';

  final String shortcut;
  final String shortcutResult;
  final String softwareName;
  ShortcutPopup(
      {Key? key,
      required this.shortcut,
      required this.shortcutResult,
      required this.softwareName})
      : super(key: key);

  @override
  State<ShortcutPopup> createState() => _ShortcutPopupState();
}

class _ShortcutPopupState extends State<ShortcutPopup> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      insetPadding: EdgeInsets.all(80),
      backgroundColor: const Color.fromARGB(177, 176, 101, 189),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5, bottom: 20),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 20, bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.shortcutResult,
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
                    widget.shortcut,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (FirebaseAuth.instance.currentUser == null) {
                Navigator.pushNamed(context, SignInScreen.routeName);
              } else {
                Bookmark newBookmark = Bookmark(
                    softwareName: widget.softwareName,
                    shortcut: widget.shortcut,
                    shortcutResult: widget.shortcutResult);
                context.read<BookmarkBloc>().add(OnAddBookmark(newBookmark));
              }
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
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}

class SearchFieldWidget extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  Function(String) onChanged;

  SearchFieldWidget(
      {Key? key,
      required this.hint,
      required this.onChanged,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, bottom: 30, left: 10, right: 10),
        child: TextFormField(
          controller: controller,
          onChanged: onChanged,
          style: Theme.of(context).textTheme.bodyLarge?.merge(const TextStyle(
                color: Colors.black,
              )),
          cursorColor: Colors.black,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
            hintText: hint,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.merge(const TextStyle(color: Color(0xFF9B8F8F))),
            filled: true,
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(width: 0, style: BorderStyle.none
                    // color: Theme.of(context).primaryColor,
                    )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(width: 0, style: BorderStyle.none
                    // color: Theme.of(context).primaryColor,
                    )),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(width: 0, style: BorderStyle.none
                    // color: Theme.of(context).primaryColor,
                    )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(width: 0, style: BorderStyle.none
                    // color: Theme.of(context).primaryColor,
                    )),
          ),
        ));
  }
}
