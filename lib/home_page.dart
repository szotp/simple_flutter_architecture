import 'package:flutter/material.dart';
import 'package:simple_flutter_architecture/helper.dart';
import 'package:simple_flutter_architecture/data.dart';

class HomePage extends StatefulWidget {
  final AppData model;
  final SegueCallback<int> showDetail;

  HomePage({this.model, this.showDetail});

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            widget.model.counter.build((context, value) {
              return new Text('Pressed $value times.');
            }),
            new FlatButton(
              child: new Text('Increment'),
              onPressed: widget.model.increment,
            ),
            new FlatButton(
              child: new Text('Navigate'),
              onPressed: () => widget.showDetail(context, widget.model.counter.value),
            )
          ],
        ),
      ),
    );
  }
}
