// import 'package:medlive/helper/api.dart';
// import 'package:medlive/services/product_model.dart';

// class GetProductsService {
//   Future<List<ProductModel>> getProducts() async {
//     Map<String, dynamic> data = await Api()
//         .getService(url: 'https://dummyjson.com/products/category/skin-care');

//     List<ProductModel> products = [];
//     for (int i = 0; i < data.length; i++) {
//       products.add(ProductModel.fromJson(data[i]));
//     }
//     return products;
//   }
// }
import 'package:medlive/helper/api.dart';
import 'package:medlive/services/product_model.dart';

class GetProductsService {
  Future<List<ProductModel>> getProducts() async {
    Map<String, dynamic> data = await Api()
        .getService(url: 'https://dummyjson.com/products/category/skin-care');

    // Assume the response contains a key "products"
    List<dynamic> productsData = data['products'] as List<dynamic>;

    List<ProductModel> products = productsData.map((item) {
      return ProductModel.fromJson(item as Map<String, dynamic>);
    }).toList();

    return products;
  }

  Future<List<ProductModel>> getbeautyProducts() async {
    Map<String, dynamic> data = await Api()
        .getService(url: 'https://dummyjson.com/products/category/beauty');

    // Assume the response contains a key "products"
    List<dynamic> productsData = data['products'] as List<dynamic>;

    List<ProductModel> products = productsData.map((item) {
      return ProductModel.fromJson(item as Map<String, dynamic>);
    }).toList();

    return products;
  }
}
