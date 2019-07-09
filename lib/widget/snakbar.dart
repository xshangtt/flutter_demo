import 'package:flutter/material.dart';

// 当BuildContext在Scaffold之前时，调用Scaffold.of(context)会报错。这时可以通过Builder Widget来解决

class SnackBarDemo extends StatelessWidget {
  final SnackBar snackBar = SnackBar(
      content: Text("SnackBar"),
      action: SnackBarAction(label: "action", onPressed: (){
      }),
  );
  showSnackBar(BuildContext context){
    Scaffold.of(context).showSnackBar(snackBar);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SnackBar"),
      ),
      body: Builder(builder: (BuildContext context){
        return Center(
          child: MaterialButton(
              child: Text("显示SnackBar"),
              onPressed: (){
                showSnackBar(context);
              }),
        );
      }),
    );
  }
}
