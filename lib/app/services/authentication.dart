import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:multifirebaseauthentication/app/models/user.dart';

class AuthService {
  // Firebase Authentications instance
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // Firebase user to Normal user
  User _userFromFirebase(FirebaseUser user) {
    return user != null
        ? User(
            uid: user.uid,
            name: user.displayName,
            email: user.email,
            phone: user.phoneNumber,
            photo: user.photoUrl,
          )
        : null;
  }

  // User Stream
  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebase);
  }

  // Signin Anonymously
  Future signinAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebase(user);
    } catch (e) {
      return [
        null,
        e,
      ];
    }
  }

  // Signin Email
  Future signinEmail(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      FirebaseUser user = result.user;
      return _userFromFirebase(user);
    } catch (e) {
      return [
        null,
        e,
      ];
    }
  }

  // SignUp Email
  Future signupEmail(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      FirebaseUser user = result.user;
      return _userFromFirebase(user);
    } catch (e) {
      return [
        null,
        e,
      ];
    }
  }

  // Sigin Google
  Future signinGoogle() async {
    try {
      GoogleSignInAccount googleAccount = await _googleSignIn.signIn();
      if (googleAccount != null) {
        GoogleSignInAuthentication googleAuth =
            await googleAccount.authentication;

        if (googleAuth.accessToken != null && googleAuth.idToken != null) {
          try {
            AuthResult result = await _auth.signInWithCredential(
              GoogleAuthProvider.getCredential(
                idToken: googleAuth.idToken,
                accessToken: googleAuth.accessToken,
              ),
            );
            FirebaseUser user = result.user;
            return _userFromFirebase(user);
          } catch (e) {
            return [
              null,
              e,
            ];
          }
        }
      }
    } catch (e) {
      return [
        null,
        e,
      ];
    }
  }

  // Signout
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      return [
        null,
        e,
      ];
    }
  }
}
