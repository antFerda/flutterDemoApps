import 'package:flutter/material.dart';
import 'package:unitConverterApp/converter_route.dart';
import 'package:unitConverterApp/unit.dart';

class Category extends StatelessWidget {
  var _name;
  var _icon;
  var _bgColor;
  Unit _unit;

  Category(this._name, this._icon, this._bgColor, this._unit);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(
            color: Colors.black,
            width: 8,
          )),
      child: InkWell(
        onTap: () => {_navigateToCategory(context)},
        splashColor: _bgColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                this._icon,
                size: 60.0,
              ),
            ),
            Text(
              this._name,
              style: TextStyle(fontSize: 24.0),
            )
          ],
        ),
      ),
    );
  }

  _navigateToCategory(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: Text(_name),
              ),
              body: Center(
                child: ConverterRoute(
                  _name,
                  _bgColor,
                  _unit,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
