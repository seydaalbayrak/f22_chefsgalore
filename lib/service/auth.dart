import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final userCollection = FirebaseFirestore.instance;
  final firebaseAuth = FirebaseAuth.instance;

  Future<User?> signIn(String email,String password) async{
    var user =await firebaseAuth.signInWithEmailAndPassword(email: email.trim(), password: password.trim());
    return user.user!;

  }

  signOut() async{
    return await firebaseAuth.signOut();
  }

  Future<User?> createPerson(String name,String email, String password) async{
    var user =await firebaseAuth.createUserWithEmailAndPassword(email: email.trim(), password: password.trim(),);
    await userCollection
      .collection("Person")
    .doc(user.user?.uid)
    .set({
      'name':name,
      'email':email
    });
    return user.user;
  }
}