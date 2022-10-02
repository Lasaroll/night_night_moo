//import 'package:despicables_me_app/styleguide.dart';
//
import 'package:flutter/material.dart';
import 'package:night_night_moo/character/characterstyle.dart';
import 'package:night_night_moo/character/character_widget.dart';

class CharacterListingScreen extends StatefulWidget {
  @override
  _CharacterListingScreenState createState() => _CharacterListingScreenState();
}

class _CharacterListingScreenState extends State<CharacterListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Moos Profile"),
          backgroundColor: Colors.transparent,
          toolbarHeight: 70,
          flexibleSpace: Container(
              decoration:BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueGrey, Colors.black],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,

                  )
              )
          ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Growing up daily", style: CharTheme.display1),
                      TextSpan(text: "\n"),
                      TextSpan(text: "Getting wiser with every reflection!", style: CharTheme.display2),
                      TextSpan(text: "\n"),
                      TextSpan(text: "Currently, age: 4 but every time I do a reflection, I am one day more than I was before with more & more stories to tell", style: CharTheme.subHeading),
                    ],
                  ),
                ),
              ),
              /*
              Expanded(
                child: CharacterWidget(),

               */

            ],
          ),
        ),
      ),
    );
  }
}