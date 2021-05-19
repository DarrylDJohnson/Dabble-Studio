import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class StorageService {
  final FirebaseStorage _storage;

  StorageService() : _storage = FirebaseStorage.instance;

  Future<String> getUrl (String assetName) {
    return _storage.ref().child(assetName).getDownloadURL();
  }


}
