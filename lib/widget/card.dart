import 'package:ecommerce_basket_app_with_provider/provider/basketProvider.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_basket_app_with_provider/model/productModel.dart';
import 'package:provider/provider.dart';

class CardWidget extends StatelessWidget {
  final Product product;

  const CardWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color:
                    Colors.grey.withOpacity(0.5), 
                spreadRadius: 1, 
                blurRadius: 10, 
                offset: Offset(3, 3), 
              ),
            ],
          ),
          padding: EdgeInsets.only(left: 5, right: 5),
          width: 170,
          height: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 140,
                width: 160,
                padding: EdgeInsets.only(top: 5),
                child: Image.network(
                  product.imagePath!,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(1))),
                child: Text(
                  "Premium ilə ${product.discountPercent}%-ə qədər",
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Row(
                children: [
                  Text(
                    "${product.price! * (100 - product.discountPercent!) / 100} ₼",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${product.price} ₼",
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              Text(
                product.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Divider(
                height: 20,
                thickness: 0.5,
                color: Colors.black,
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.shopping_cart_outlined),
                    Text("SƏBƏTƏ")
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 130,
          child: Consumer<basketProvider>(
            builder: (context, value, child) {
              return IconButton(
                  onPressed: () {
                    value.toggleFav(product.id!);
                  },
                  icon: value.isExist(product.id!)
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        )
                      : Icon(
                          Icons.favorite,
                          size: 30,
                        ));
            },
          ),
        ),
      ],
    );
  }
}
