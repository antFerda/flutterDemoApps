import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:unitConverterApp/unit.dart';

class ConverterRoute extends StatefulWidget {
  final Unit unit;
  final Color bgColor;
  final name;

  ConverterRoute(this.name, this.bgColor, this.unit);

  @override
  State<StatefulWidget> createState() {
    return _ConverterRouteState(bgColor);
  }
}

class _ConverterRouteState extends State<ConverterRoute> {
  Color bgColor;

  _ConverterRouteState(Color bgColor) {
    this.bgColor = bgColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              bgColor = getRandomColor();
            });
          },
          child: Text(
            widget.name,
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              backgroundColor: bgColor,
            ),
          ),
        ),
      ),
    );
  }
}

Color getRandomColor() {
  Random r = new Random();
  return Color.fromRGBO(r.nextInt(255), r.nextInt(255), r.nextInt(255), 1.0);
}
