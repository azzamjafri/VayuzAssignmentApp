import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:test_project/ui/my_icons_icons.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      // ========= APP BAR ============
      appBar: new AppBar(
        backgroundColor: Colors.grey.shade900,
        title: new Text("Contacts"),
        centerTitle: true,
      ),



      // =========== DRAWER ===============
      drawer: new Drawer(
        child: new Text("Left Blank Intentionally"),
      ),
      backgroundColor: Colors.grey.shade700,

      // ========== Body =============
      body: new ListView(


        children: <Widget>[

          // ========= IMAGE ============
          new Container(

            child: new Image.asset('assets/contact_main.png', fit: BoxFit.cover, height: 200.0,),
          ),

          
          new Column(
            children: <Widget>[
              Padding(padding: const EdgeInsets.all(12.0)),

              new Container(

                //alignment: Alignment.center,
                padding: new EdgeInsets.all(12.0),
                child: new Text("If this is your first time using the OT1 protocols for making contact or if you’d like to refresh your memory on the process, it is highly recommended that you read through the OT1 Guide",
                style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
              ),

              Padding(padding: const EdgeInsets.all(10.0)),

              // ============ First Button ============
              new ButtonTheme(
                minWidth: 300.0,
                child: new RaisedButton(
                  textColor: Colors.white,
                    child: new Text("OT1 Guide"),
                    color: Colors.lightBlue,
                    //elevation: 5.0,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0)
                    ),
                    onPressed: (){}
                    ),
              ),


              Padding(padding: const EdgeInsets.all(10.0)),

              new Container(
                padding: EdgeInsets.all(12.0),
                child: new Text("To begin the OT1 process, continue below. Per default settings of this app, you will automatically enter “Field Mode,” where notifications will be muted and screen brightness will lower to 25%. This will avoid any disturbances during OT1. You may adjust any of these defaults from within the app settings.",
                style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              ),


              Padding(padding: const EdgeInsets.all(10.0)),

              // =========== SECOND BUTTON ==========
              new ButtonTheme(
                minWidth: 300.0,
                child: new RaisedButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0)
                    ),
                    textColor: Colors.white,
                    color: Colors.lightBlue,
                    child: new Text("Begin OT1 Process"),
                    onPressed: (){}),
              ),


              Padding(padding: const EdgeInsets.all(12.0)),

              // ========== Third Button ===============
              new ButtonTheme(
                minWidth: 300.0,

                //child: Opacity(
                  //opacity: 0.7,
                  child: new RaisedButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.white)
                      ),
                      textColor: Colors.white,
                      color: Colors.grey.shade700,
                      child: new Text("Adjust Field Mode Settings"),
                      onPressed: (){}),
                //),
              ),

              Padding(padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),)

            ],
          )
        ],
      ),





      // ============== BOTTOM NAVIGATION BAR ====================
      bottomNavigationBar: new BottomNavigationBar(
        //backgroundColor: Colors.grey.shade800,
          items: [
        new BottomNavigationBarItem(icon: new Icon(MyIcons.icon_4), title: new Text("Network"), backgroundColor: Colors.grey.shade800),

        new BottomNavigationBarItem(icon: new Icon(MyIcons.icon_3), title: new Text("Messages"), backgroundColor: Colors.grey.shade800),

        new BottomNavigationBarItem(icon: Icon(MyIcons.icon_2), title: new Text("Contacts"), backgroundColor: Colors.grey.shade800),

        new BottomNavigationBarItem(icon: Icon(MyIcons.icon_1), title: new Text("Library"), backgroundColor: Colors.grey.shade800),
            //Tab(icon: CustomClipper.,)

      ]),
    );
  }
}
