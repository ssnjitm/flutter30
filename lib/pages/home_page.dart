import 'dart:convert';

import 'package:codepurs/models/catalog.dart';
import 'package:codepurs/widgets/home_widgets/catalog_header.dart';
import 'package:codepurs/widgets/home_widgets/catalog_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items.clear();
    CatalogModel.items =
        List.from(productData).map<Item>((Item) => Item.fromMap(Item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //column wrapped with container and again wrapped with SafeArea
        body: SafeArea(
      child: Container(
        padding: Vx.m32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeader(),
            if (CatalogModel.items != null)
              CatalogList().expand()
            // banaune ho aafai
            else
              CircularProgressIndicator().expand()
          ],
        ),
      ),
    ));
  }
}
