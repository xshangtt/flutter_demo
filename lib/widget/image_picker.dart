import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImagePicker extends StatefulWidget {
  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image picker"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: <Widget>[
            Image.network(
              "http://img.redocn.com/sheji/20141219/zhongguofengdaodeliyizhanbanzhijing_3744115.jpg",
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
            CachedNetworkImage(
              height: 100,
              width: 100,
              fit: BoxFit.fill,
              imageUrl: "http://pic1.win4000.com/wallpaper/3/57440d14a1ed8.jpg",
              placeholder: (context, url) => Container(
                    child: CircularProgressIndicator(),
                    width: 30,
                    height: 30,
                  ),
              errorWidget: (context, url, error) => new Icon(Icons.error),
            ),
            Image(
                height: 100,
                width: 100,
                fit: BoxFit.fill,
                image: new CachedNetworkImageProvider(
                    "http://img.redocn.com/sheji/20141219/zhongguofengdaodeliyizhanbanzhijing_3744115.jpg")),
            Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
              width: 30,
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
