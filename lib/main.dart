import 'package:flutter/material.dart';
import 'widget/image_picker.dart';
import 'widget/snakbar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter demo"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("image picker"),
            leading: Icon(Icons.picture_in_picture),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>ImagePicker()));
            },
          ),
          ListTile(
            title: Text("snack bar"),
            leading: Icon(Icons.picture_in_picture),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>SnackBarDemo()));
            },
          ),
        ],
      ),
    );
  }
}
