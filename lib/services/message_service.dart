import 'package:cloud_firestore/cloud_firestore.dart';

class MessageService {
  final FirebaseFirestore firestore;

  MessageService() : firestore = FirebaseFirestore.instance;

  Future sendMessage(String email, String name, String message) => firestore
      .collection("messages")
      .doc(email.toLowerCase())
      .collection(name.toLowerCase())
      .add({'message': message});
}
