import 'package:flutter/material.dart';

class note_image_banner extends StatelessWidget {
  final String _assetPat;

  note_image_banner(this. _assetPat);

  @override
  Widget build(BuildContext context) {
    return Container(
            constraints: BoxConstraints.expand(
            height: 900.0, width: 700.0),
            decoration:  BoxDecoration(color: Colors.lightBlue.shade50),
              child: Image.asset(
                  _assetPat,
                  fit:BoxFit.cover),);}}

//import 'image_banner.dart';