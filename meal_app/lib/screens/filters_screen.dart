import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = "/filters";
  // final Function saveFilters;
  final Function currentFilter;

  FiltersScreen(this.currentFilter);
  // const FiltersScreen({Key? key}) : super(key: key);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegan = false;
  var _vegetarian = false;
  var lactoseFree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      body: Center(
        child: Text('Filter me'),
      ),
    );
  }
}
