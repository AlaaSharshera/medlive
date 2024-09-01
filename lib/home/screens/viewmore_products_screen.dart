import 'package:flutter/material.dart';
import 'package:medlive/home/components/custom_product_container.dart';
import 'package:medlive/services/get_products_service.dart';
import 'package:medlive/services/product_model.dart';

class ViewmoreProductsScreen extends StatelessWidget {
  const ViewmoreProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Beauty Products"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: FutureBuilder<List<ProductModel>>(
        future: GetProductsService().getbeautyProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ProductModel> products = snapshot.data!;
            return Expanded(
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, index) {
                    return CustomProductContainer(
                      product: products[index],
                    );
                  }),
            );
            ;
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
