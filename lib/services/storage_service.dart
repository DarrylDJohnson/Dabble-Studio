import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase/firebase.dart';

class StorageService {

  final FirebaseStorage storage;

  StorageService() : storage = FirebaseStorage.instance;
  
  Future<String> getUrl(String assetName){
    try{

      return storage.ref().child(assetName).getDownloadURL();
    } catch(e){
      print(e);
      return Future.value("");
    }
  }
}
