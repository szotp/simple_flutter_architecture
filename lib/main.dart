import 'package:flutter/material.dart';
import 'package:simple_flutter_architecture/home_page.dart';
import 'package:simple_flutter_architecture/data.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final data = new AppData();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: createHomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }

  Widget createHomePage() => new HomePage(
        model: data,
        showDetail: showDetail,
      );

  void showDetail(BuildContext context, int data) {
    final route = new MaterialPageRoute(
      builder: (context) {
        return new Scaffold(
          appBar: new AppBar(),
          body: new Center(
            child: new Text('$data'),
          ),
        );
      },
    );
    Navigator.of(context).push(route);
  }
}
