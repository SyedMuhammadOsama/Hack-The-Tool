import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/bookmark.dart';

class BookmarkService {
  User? user = FirebaseAuth.instance.currentUser;

  Future<void> addBookmark({required Bookmark newBookmark}) async {
    try {
      await FirebaseFirestore.instance
          .collection("bookmarks")
          .doc(user?.uid)
          .set({
        'listOfBookmark': FieldValue.arrayUnion([newBookmark.toJson()])
      }, SetOptions(merge: true));
    } catch (e) {
      log(e.toString());
    }
  }

  Stream<List<Bookmark>?> allBKStream() {
    try {
      return FirebaseFirestore.instance
          .collection('bookmarks')
          .doc(user?.uid)
          .snapshots()
          .map(
            (event) => (event.data()?['listOfBookmark'] as List<dynamic>?)
                ?.map((e) => Bookmark.fromJson(e))
                .toList(),
          );
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<List<Bookmark>> deleteBookmark(Bookmark bookmark) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> customSnapshot =
          await FirebaseFirestore.instance
              .collection("bookmarks")
              .doc(user?.uid)
              .get();
      List<Bookmark> document =
          (customSnapshot.data()?['listOfBookmark'] as List)
              .map((e) => Bookmark.fromJson(e))
              .toList();
      document.removeWhere((element) =>
          (element.shortcutResult == bookmark.shortcutResult &&
              element.softwareName == bookmark.softwareName));
      await FirebaseFirestore.instance
          .collection("bookmarks")
          .doc(user?.uid)
          .update({'listOfBookmark': document.map((e) => e.toJson()).toList()});
      return document;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
