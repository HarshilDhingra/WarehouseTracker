import 'package:flutter/material.dart';
import 'Items.dart';
import 'Adding.dart';

class Stock extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StockState();
  }

}
class StockState extends State<Stock>{
  static String text;
  static List<Items> item=[];
  int i=0;
  int n=AddState.items.length;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Stock Finder"),
      centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(tag:"hero",
              child: CircleAvatar(
                child: Icon(Icons.track_changes,color: Colors.redAccent,size: 75.0,),
                radius: 75.0,
              ),),
              Padding(padding: EdgeInsets.all(10.0),),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusColor: Colors.blue,
                    hintText: 'Enter Keyword',
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    )),
                onChanged: (value){
                  text=value;
                },
              ),
    Padding(padding: EdgeInsets.all(10.0),),
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
    child: Text("Check",style: TextStyle(color: Colors.white),),
      onPressed: (){

       Navigator.pushNamed(context, "list");
      },
    )
    )
    ),
            ],
          ),
        ),
      ),
    );
  }

}