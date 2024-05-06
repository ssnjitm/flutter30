import 'package:codepurs/models/catalog.dart';
import 'package:codepurs/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mH8, //buttonPadding: Vx.mOnly8;

          children: [
            "\$${catalog.price}".text.bold.red400.xl4.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Buy".text.white.make(),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBluishColor),
              ),
            ).p32(),
          ],
        ).p32(),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).p16(),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.lg
                          .color(MyTheme.darkBluishColor)
                          .bold
                          .make(),
                      catalog.desc.text.color(MyTheme.darkBluishColor).make(),
                      5.heightBox,
                    ],
                  ).py64(),
                ),
              ))
            ],
          ),
        ));
  }
}
