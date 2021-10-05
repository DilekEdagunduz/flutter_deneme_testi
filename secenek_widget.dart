import 'package:flutter/material.dart';

enum Secenek { A, B, C, D }

class SecenekWidget extends StatefulWidget {
  final String text;
  final Secenek secenek;
  const SecenekWidget({
    @required this.secenek,
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  _SecenekWidgetState createState() => _SecenekWidgetState();
}

class _SecenekWidgetState extends State<SecenekWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        selected: isSelected,
        tileColor: Colors.blue.shade200,
        leading: Text(widget.secenek.toString().split('.').last),
        title: Text(widget.text),
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
      ),
    );
  }
}
