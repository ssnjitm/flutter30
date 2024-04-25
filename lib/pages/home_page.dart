import 'package:codepurs/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double days = 30;
    String name = "codepur";
    return Scaffold(
      appBar: AppBar(
          
          title: Center(child: Text('Catalog App'))),
      body: Center(
        child: Container(
          child: Text('welcome to ${days}  days of fluter by $name'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
