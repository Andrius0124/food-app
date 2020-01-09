import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const String routeName = "/meal-details";

  const MealDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((m) => m.id == id);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(selectedMeal.imageUrl),
            ),
            buildSectionLabel(context, "Ingrediens"),
            buildContainer(ListView.builder(
              itemCount: selectedMeal.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(selectedMeal.ingredients[index]),
                  ),
                );
              },
            )),
            buildSectionLabel(context, "Steps"),
            buildContainer(ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('# ${(index + 1)}'),
                      ),
                      title: Text(selectedMeal.steps[index]),
                    ),
                    Divider()
                  ],
                );
              },
              itemCount: selectedMeal.steps.length,
            ))
          ],
        ),
      ),
    );
  }

  Container buildSectionLabel(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Text(
        title,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  buildContainer(ListView listView) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        height: 150,
        width: 300,
        child: listView);
  }
}
