import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomListIcon extends StatefulWidget {
  IconData icon;
  String text;
  CustomListIcon(this.icon, this.text);

  @override
  _CustomListIconState createState() => _CustomListIconState();
}

class _CustomListIconState extends State<CustomListIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: InkWell(
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(widget.text, style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
              Icon(widget.icon),
            ],
          ),
        ),
      ),
    );
  }
}
