import 'package:flutter/material.dart';
import 'dart:async';
import 'Noteapp.dart';
import 'Style/style.dart';
class Timer_Screen extends StatefulWidget {
  @override
  Timer_Screen_Widget createState() => Timer_Screen_Widget();
}

class Timer_Screen_Widget extends State<Timer_Screen> {
  //Variable
  int timeleft = 900;
  //Timer method
  void _startCountDown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeleft>0) {
      setState(() {
        timeleft = timeleft - 1;
      });}
      else {
        timer.cancel();
      }
    });
  }

  @override

  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: AppStyle.textColor,
        appBar: AppBar(
          title: Text("Moo Timer"),
              backgroundColor: Colors.transparent,
              toolbarHeight: 70,
              flexibleSpace: Container(
              decoration:BoxDecoration(
              gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.black],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,)))),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    timeleft == 0 ? "Night Night Time" : timeleft.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  SizedBox(
                      width: 200, // <-- Your width
                      height: 100, // <-- Your height
                      child:
                  MaterialButton(
                      onPressed: _startCountDown,
                      //Do Something
                      child: Text(
                        "START",
                        style: TextStyle(color: Colors.white, fontSize: 70, fontFamily: "Gum"),
                      ),
                      color: Colors.blueGrey.shade700)
                  ),
                  SizedBox(
                      width: 700, // <-- Your width
                      height: 200
                      , // <-- Your height
                      child:
                        ElevatedButton(
                        onPressed: ()
                            {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Noteapp()));
                            },

                        //Do Something
                        child: Text(
                          "Reflection",
                          style: TextStyle(color: Colors.white, fontSize: 70, fontFamily: "Gum"),
                         ),
                        )
    )

                ]

            )
        ),
      );
    }
  }





