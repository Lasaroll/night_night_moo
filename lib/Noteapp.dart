import 'package:flutter/material.dart';
import 'note_image_banner.dart';
import 'Style/style.dart';


class Noteapp extends StatefulWidget {
  @override
  Noteapp_Widget createState() => Noteapp_Widget();
}

class Noteapp_Widget extends State<Noteapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
              title: Text("Moos Habitat"),
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
              )
              ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            note_image_banner("Assets/Images/imagedairy.jpg")

        /*
            body: Container(
                height: 300.0,
                width: 100.0,
                 decoration:  BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage("Assets/Images/img_1"),
                     fit:BoxFit.contain)

         */]
            )
            );}}

//              width: double.infinity,
//                 height: double.infinity,
/*

class Noteapp extends StatefulWidget {
  @override
  Noteapp_Widget createState() => Noteapp_Widget();
}

class Noteapp_Widget extends State<Noteapp> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: AppStyle.mainColor,
        appBar: AppBar(
        title: Text("Moo's Notepad"),centerTitle: true, backgroundColor: AppStyle.textColor),

    body: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
      "Your Recent Notes,", style: TextStyle(fontFamily: 'Gum', fontSize: 22.0, color:AppStyle.textColor, fontWeight: FontWeight.bold),
      ),

    SizedBox(height:20.0,
    ),
        StreamBuilder<QuerySnapshot>(builder:builder),
        stream: FirebaseFirestore.instance
        builder: (context, AsyncSnapshot snapshot){
      //Checking the connection state, if we can still load the data we can display a progress bar.
      if (snapshot.connectionState == ConnectionState.waiting) {
        return (center
          (child: CircularProgressIndicator(),))
      }
      if(snapshot.hasData){
        return Gridview(SilverGridDelegateWithFixedCrossAsixCount(CrossAxisCount:2));
      }
    },
    return Text("There's no notes", style: TextStyle(fontFamily: 'Gum', fontSize: 22.0, color:AppStyle.textColor, fontWeight: FontWeight.bold),

    }


 */