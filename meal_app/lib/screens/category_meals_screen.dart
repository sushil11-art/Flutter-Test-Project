import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealScreen extends StatefulWidget {
  static const routeName = "/category-meals";

  final List<Meal> availableMeals;

  CategoryMealScreen(this.availableMeals);
  @override
  State<CategoryMealScreen> createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  late String categoryTitle;
  late List<Meal> displayedMeals;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    categoryTitle = routeArgs['title'] as String;
    final categoryId = routeArgs['id'];
    displayedMeals = widget.availableMeals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    // final routeArgs =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    // final categoryTitle = routeArgs['title'];
    // final categoryId = routeArgs['id'];
    // final categoryMeals = dummyMeals.where((meal) {
    //   return meal.categories.contains(categoryId);
    // }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
                id: displayedMeals[index].id,
                title: displayedMeals[index].title,
                imageUrl: displayedMeals[index].imageUrl,
                duration: displayedMeals[index].duration,
                complexity: displayedMeals[index].complexity,
                affordability: displayedMeals[index].affordability,
                removeItem: _removeMeal);
          },
          itemCount: displayedMeals.length,
        ));
  }
}
