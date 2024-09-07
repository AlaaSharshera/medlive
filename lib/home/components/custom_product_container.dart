import 'package:flutter/material.dart';
import 'package:medlive/services/product_model.dart';

class CustomProductContainer extends StatelessWidget {
  const CustomProductContainer({required this.product, super.key});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 121,
      width: 97,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 2),
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(height: 110, image: NetworkImage(product.images[0])),
          Text(
            product.title.substring(0, 8),
            style: const TextStyle(color: Colors.black, fontSize: 12),
          ),
          Text(
            " ${product.price} \$",
            style: const TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
