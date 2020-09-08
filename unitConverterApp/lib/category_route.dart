import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:unitConverterApp/category.dart';
import 'package:unitConverterApp/unit.dart';

class CategoryRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CategoryRouteState();
}

class _CategoryRouteState extends State<CategoryRoute> {
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

  /// Returns a list of mock [Unit]s.
  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

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
            return Category(
              _categoryNames[index],
              _categoryIcons[index],
              _baseColors[index],
              _retrieveUnitList(_categoryNames[index])[index],
            );
          },
        ));
  }
}
