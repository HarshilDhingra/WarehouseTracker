import 'package:flutter/material.dart';
import 'Stock.dart';
import 'Items.dart';
import 'Adding.dart';
class View extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ViewState();
  }

}
class ViewState extends State<View> {
  List<Items> item1 = [];
  int i = 0;
  int n = AddState.items.length;

  @override
  void initState() {
    while (i < n) {
      print(AddState.items[i]);
      if (AddState.items[i].name.contains(StockState.text)) {
        item1.add(AddState.items[i]);
      }
      i++;
    }
    super.initState();
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Your concerned items"),),
        body: Center(
          child:
             ListView.separated(
                padding: const EdgeInsets.all(2),
                itemCount: item1.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    child: Center(child: Text('Entry ${item1[index].function()}',style: TextStyle(color: Colors.black),)),
                  );
                },
                separatorBuilder: (BuildContext context,
                    int index) => const Divider(),
              )
            ),

      );
    }
  }