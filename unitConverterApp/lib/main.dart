import 'package:flutter/material.dart';
import 'package:unitConverterApp/category_route.dart';
import 'category.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Unit converter',
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Unit Converter',
                style: TextStyle(fontSize: 30.0),
              ),
              elevation: 0.0,
            ),
            backgroundColor: Colors.blueGrey,
            body: Center(child: CategoryRoute())));
  }
}
