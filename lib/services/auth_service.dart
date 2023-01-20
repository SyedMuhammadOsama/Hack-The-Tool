import 'package:firebase_auth/firebase_auth.dart';
import 'package:hack_the_tool/utils.dart';

class AuthService {
  Future<UserCredential> signUp(String email, String password) async {
    try {
      UserCredential credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      Utils().showSnackBar(e.message.toString());
      rethrow;
    }
  }

  Future<UserCredential> signIn(String email, String password) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential;
    } on FirebaseAuthException catch (e) {
      Utils().showSnackBar(e.message.toString());
      rethrow;
    }
  }

  void logOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
