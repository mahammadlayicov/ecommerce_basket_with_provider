import 'package:ecommerce_basket_app_with_provider/model/productModel.dart';
import 'package:ecommerce_basket_app_with_provider/provider/basketProvider.dart';
import 'package:ecommerce_basket_app_with_provider/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 240, 240),
        appBar: AppBar(
          title: Text("Products"),
          actions: [
            Consumer<basketProvider>(builder: (context, value, child) {
              return GestureDetector(
                  onTap: value.clearFav,
                  child: Text(
                    "Təmizlə  ",
                    style: TextStyle(fontSize: 20),
                  ));
            })
          ],
        ),
        body: SingleChildScrollView(
          child: Consumer<basketProvider>(builder: (context, value, child) {
            return GridView.builder(
                padding: EdgeInsets.fromLTRB(30, 50, 25, 0),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisExtent: 300),
                itemCount: value.products.length,
                itemBuilder: (BuildContext context, int index) {
                  int id = value.products[index];
                  Product product = products[id - 1];
                  return GestureDetector(
                      onTap: () {}, child: CardWidget(product: product));
                });
          }),
        ));
  }
}
