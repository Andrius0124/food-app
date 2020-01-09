import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/category_item.dart';
import 'package:flutter_complete_guide/dummy_data.dart';

class CatagoryScreen extends StatelessWidget {
  const CatagoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DeliMeal"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView(
          children: DUMMY_CATEGORIES
              .map((c) => CategoryItem(
                    title: c.title,
                    color: c.color,
                    id: c.id,
                  ))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
