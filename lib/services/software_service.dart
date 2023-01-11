import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hack_the_tool/models/software.dart';

class SoftwareService {
  Future<Software> getSoftware({required String softwareUid}) async {
    DocumentSnapshot<Map<String, dynamic>> customSnapshot =
        await FirebaseFirestore.instance
            .collection("software")
            .doc(softwareUid)
            .get();
    Software document = Software.fromJson(customSnapshot.data()!);

    return document;
  }

  Stream<List<Software>> allSoftwareStream() {
    return FirebaseFirestore.instance.collection('software').snapshots().map(
        (event) =>
            (event.docs.map((e) => Software.fromJson(e.data())).toList()));
  }
}
