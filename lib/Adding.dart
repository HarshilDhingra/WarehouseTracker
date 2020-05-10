import 'package:flutter/material.dart';
import 'Items.dart';
class Add extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddState();
  }

}
class AddState extends State<Add>{
  static List<Items> items=[];
  static String text;
  int i,j,k,l;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(" Add Product to Storage"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(tag: "hero", child: CircleAvatar(
                child: Icon(Icons.track_changes,color: Colors.redAccent,size: 75.0,),
                radius: 75.0,
              )),
              Padding(padding: EdgeInsets.all(10.0),),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
                focusColor: Colors.blue,
                hintText: 'Enter Product Name',
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              )),
                onChanged: (value){
                text=value;
                },
              ),
              Padding(padding: EdgeInsets.all(10.0),),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusColor: Colors.blue,
                    hintText: 'Enter Rack No.',
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    )),
                onChanged: (value){
                  i=int.parse(value);
                },
              ),
              Padding(padding: EdgeInsets.all(10.0),),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusColor: Colors.blue,
                    hintText: 'Enter Shelf No.(less than 10)',
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    )),
                onChanged: (value){
                  j=int.parse(value);
                },
              ),
              Padding(padding: EdgeInsets.all(10.0),),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusColor: Colors.blue,
                    hintText: 'Enter Block No. (less than 10)',
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    )),
                onChanged: (value){
                  k=int.parse(value);
                },
              ),
              Padding(padding: EdgeInsets.all(10.0),),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusColor: Colors.blue,
                    hintText: 'Enter No. of Boxes(less than 20)',
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    )),
                onChanged: (value){
                  l=int.parse(value);
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
                        child: Text("Stock Detail",style: TextStyle(color: Colors.white),),
                        onPressed: () {
                        if((i!=null&&j!=null&&k!=null&&l!=null&&text!=null)) {
                          items.add(Items(text, i, j, k, l));
                          showAlertDialog(context);
                        }
                       else{
                         showNotAlertDialog(context);
                        }
                        })))
            ],
          ),
        ),
    );
  }

}
  showAlertDialog(BuildContext context) {
    Widget cancelButton = FlatButton(
      child: Text("Home Screen"),
      onPressed:  () {
        Navigator.pushNamed(context,"home");
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Continue Adding Product"),
      onPressed:  () {
        Navigator.pop(context);
        },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Registered Successfully"),
      content: Text("Product is Added in warehouse and is assigned specific location"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
showNotAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { Navigator.pop(context);},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Not Registered Successfully"),
    content: Text("kindly check your inputs"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}