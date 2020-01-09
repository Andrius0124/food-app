import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/dummy_data.dart';
import 'package:flutter_complete_guide/models/routes/category_meals_route.dart';
import 'package:flutter_complete_guide/widgets/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {
  static const String routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;
  // const CategoryMealScreen({
  //   Key key,
  //   @required this.categoryId,
  //   @required this.categoryTitle,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as CategoryMealsRouteModel;
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(routeArgs.id);
    }).toList();

    print(categoryMeals);
    return Scaffold(
        appBar: AppBar(
          title: Text(routeArgs.title),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return MealItem(
              title: categoryMeals[index].title,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
              duration: categoryMeals[index].duration,
              imgUrl: categoryMeals[index].imageUrl,
              id: categoryMeals[index].id,
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
