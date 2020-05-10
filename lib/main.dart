
import'package:flutter/material.dart';
import 'package:warehousetrack/Adding.dart';
import 'package:warehousetrack/listbuilder.dart';
import'Stock.dart';
void main()=>runApp(MaterialApp(
  home:WelcomeScreen(),
  routes: {
    "adding":(context)=> Add(),
    "stock":(context)=>Stock(),
    "home":(context)=>WelcomeScreen(),
    "list":(context)=>View(),
  },
));
class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.cyan,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: "hero",
            child:CircleAvatar(
              child: Icon(Icons.track_changes,color: Colors.redAccent,size: 50.0,),
              radius: 50.0,
            )),
            Padding(padding: EdgeInsets.all(15.0),),
            SizedBox(
                height: 42.0,
                width: 200.0,
                child:SizedBox.expand(
                    child:RaisedButton(color: Colors.redAccent,
                      textColor: Colors.white,
                      splashColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),

                      ),
                      child: Text("Add Stock",style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        Navigator.pushNamed(context, "adding");
                      },
                    ))),
            Padding(padding: EdgeInsets.all(20.0),),
            SizedBox(
                height: 42.0,
                width: 200.0,
                child:SizedBox.expand(
                child:RaisedButton(color: Colors.redAccent,
                textColor: Colors.white,
               splashColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),

              ),
              child: Text("Stock Detail",style: TextStyle(color: Colors.white),),
              onPressed: (){
                  Navigator.pushNamed(context, "stock");
              },
            )))
          ],
        ),
      )
    );
  }

}