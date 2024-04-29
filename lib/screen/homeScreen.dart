import 'package:ecommerce_basket_app_with_provider/model/productModel.dart';
import 'package:ecommerce_basket_app_with_provider/provider/basketProvider.dart';
import 'package:ecommerce_basket_app_with_provider/screen/favProductScreen.dart';
import 'package:ecommerce_basket_app_with_provider/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            Consumer<basketProvider>(
              builder: (context, value, child) {
                return Stack(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FavScreen()));
                        },
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          size: 30,
                        )),
                    Positioned(
                      top: 5,
                      left: 25,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 20,
                        child: Center(
                            child: Text(
                          value.products.length.toString(),
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                );
              },
            ),
            Container(
              width: 10,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: GridView.builder(
            padding: EdgeInsets.fromLTRB(30, 50, 25, 0),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10.0, mainAxisExtent: 300),
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              Product product = products[index];
              return GestureDetector(
                  onTap: () {}, child: CardWidget(product: product));
            },
          ),
        ));
  }
}
