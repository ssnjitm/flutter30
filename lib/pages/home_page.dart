import 'package:codepurs/models/catalog.dart';
import 'package:codepurs/widgets/drawer.dart';
import 'package:codepurs/widgets/iteam_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final duummyList = List.generate(4, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Catalog App'))),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: duummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: duummyList[index],
            );

            // Your code to build each item goes here
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
