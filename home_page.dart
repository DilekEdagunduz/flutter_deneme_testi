import 'package:deneme_coz/deneme_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("deneme $index "),
            onTap: () => navigateDeneme(index),
          );
        },
      ),
    );
  }

  navigateDeneme(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (contex) => DenemePage(
          denemeId: index,
        ),
      ),
    );
  }
}
