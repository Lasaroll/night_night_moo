import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import 'Timer_Screen.dart';
import 'character_listing_screen.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
        floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            backgroundColor: Colors.black
            children[
              SpeedDialChild(
                child(Icon(Icon.add_reaction),
                label: 'Grow me'),
                SpeedDialChild(
                child(Icon(Icon.add_task),
                label: 'Task List'),
            ]
            */
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.add_reaction_outlined), onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CharacterListingScreen()));
          }),
            title: Text('Moo Home Page'),
            backgroundColor: Colors.transparent,
            toolbarHeight: 70,
            flexibleSpace: Container(
              decoration:BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueGrey, Colors.black],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
               )
              )
            )

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageBanner("Assets/Images/img.png"),
            TextSection("Welcome, thank you for checking in!", "How have you been doing?", Colors.lightBlue.shade50 ),
            TextSection("Come on, let's pen down some of your thoughts & achievements today", "Proceed to the top left hand corner to access the timer. You have __ mins to tell me your whole story. READYYY?! Then, you can surely rest well!", Colors.lightBlue.shade50 ),
            Row(
              children: <Widget>[
                Text(''),
                Flexible(
                  child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 100.0)),
                ),
                Text(''),
              ],
            ),
            Row(
              children: <Widget>[
                Text(''),
                Flexible(
                  child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 100.0)),
                ),
                Text(''),
              ],
            ),
            TextButton(
              child: Text("Timer"),
              style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 100.0, fontFamily: 'Gum'),
                foregroundColor: Colors.white,  //Text Color
                backgroundColor: Colors.blueGrey, //Button Background Color
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Timer_Screen()));
                }
              ),]
            ,
        )
    );

  }
}

class FabExample extends StatelessWidget {
  const FabExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton Sample'),
      ),
      body: const Center(child: Text('Press the button below!')),
      // An example of the floating action button.
      //
      // https://m3.material.io/components/floating-action-button/specs
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

/*
Not sure whether to add floating action button to scaffold or body
floatingActionButton:FloatingActionButton(
child: Icon(Icon.add_reaction),
onPress:(){}

 */

//TimerButton(Icon(Icons.access_alarms_rounded))
//backgroundColor: Colors.lightBlue.shade50)
//ImageBanner("Assets/Images/Night nigh time Moo.jpeg"),

/*
Container(
width:200,
height:100,
child: FlatButton (color: colors.ember,
child: Text'Countdown to night night time'
 */