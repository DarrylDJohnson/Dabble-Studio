import 'package:dabble_studio/services/storage_service.dart';
import 'package:flutter/material.dart';

class FirebaseImage extends StatefulWidget {
  final String assetName;

  const FirebaseImage(
    this.assetName, {
    Key key,
  }) : super(key: key);

  @override
  _FirebaseImageState createState() => _FirebaseImageState();
}

class _FirebaseImageState extends State<FirebaseImage> {

  StorageService _service;

  @override
  void initState() {
    _service = StorageService();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _service.getUrl(widget.assetName),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return Image.network(snapshot.data);
      },
    );
  }
}
