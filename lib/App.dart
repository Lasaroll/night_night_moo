import 'package:flutter/material.dart';
import 'Hello.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        debugShowCheckedModeBanner:false,
        title: 'Moo', theme:
      ThemeData(primarySwatch:
        Colors.blueGrey,
          fontFamily: 'Gum'),
            home: Hello(),);
  }
}


//Set a font to use throughout!
/*
return MaterialApp(
title: 'Custom Fonts',
// Set Raleway as the default app font.
theme: ThemeData(fontFamily: 'Raleway'),
home: const MyHomePage(),
);
 */