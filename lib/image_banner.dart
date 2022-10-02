import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;

  ImageBanner(this. _assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand( //expand all the content
          height: 200.0,
        ),
          decoration: BoxDecoration(color: Colors.lightBlue.shade50),
        child: Image.asset(
        _assetPath,
          fit:BoxFit.cover, //fills image as much within container
        ));
  }
}

//import 'image_banner.dart';