import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:unitConverterApp/category.dart';

class CategoryRoute extends StatelessWidget {
  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  static const _categoryIcon = Icons.album;

  static const _categoryIcons = <IconData>[
    Icons.ac_unit,
    Icons.archive,
    Icons.volume_up,
    Icons.message,
    Icons.timer,
    Icons.storage,
    Icons.battery_full,
    Icons.money_off
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
            // shrinkWrap: true,
            // scrollDirection: Axis.vertical,
            // padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: _categoryNames.length,
            itemBuilder: (BuildContext context, int index) {
              return Category(_categoryNames[index], _categoryIcons[index],
                  _baseColors[index]);
            }));
  }
}
