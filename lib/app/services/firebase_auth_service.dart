// import '../model/User.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// class FirebaseAuthService {
//   final FirebaseAuth _firebaseAuth;
//   final GoogleSignIn _googleSignIn;
//
//   FirebaseAuthService(
//       {required FirebaseAuth firebaseAuth, required GoogleSignIn googleSignin})
//       : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
//         _googleSignIn = googleSignin ?? GoogleSignIn();
//
//   User _userFromFirebase(FirebaseUser user) {
//     if (user == null) {
//       return null;
//     }
//     return User(
//       uid: user.uid,
//       email: user.email,
//       displayName: user.displayName,
//       photoUrl: user.photoUrl,
//     );
//   }
//
//   Future<User> signInAnonvmously() async {
//     final authResult = await _firebaseAuth.signInAnonymously();
//     return _userFromFirebase(authResult.user);
//   }
//
//   Future<User> signInWithGoogle() async {
//     final GoogleSignInAccount googleUser await _googleSignIn.signIn();
//     final GoogleSignInAuthentication googleAuth = await googleUser
//         .authentication;
//     final AuthCredential credential = GoogleAuthProvider.getCredential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );
//     final authResult = await _firebaseAuth.signInWithCredential(credential);
//     return _userFromFirebase(authResult.user);
//   }
//
//   Future<void> signOut() async {
//     return _firebaseAuth.signOut();
//   }
//
//   Future<User> currentUser() async {
//     final FirebaseUser user = await
//     _firebaseAuth.currentUser();
//     return _userFromFirebase(user);
//   }
// }