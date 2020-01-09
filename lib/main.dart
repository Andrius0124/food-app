import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';
import 'package:flutter_complete_guide/screens/category_meals_screem.dart';
import 'package:flutter_complete_guide/screens/meal_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Colors.amber[50],
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Colors.black,
            ),
            body2: TextStyle(
              color: Color.fromARGB(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            )),
      ),
      home: CatagoryScreen(),
      routes: {
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DeliMeals'),
//       ),
//       body: Center(
//         child: Text('Navigation Time!'),
//       ),
//     );
//   }
// }
