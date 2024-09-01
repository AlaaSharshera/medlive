// class ProductModel {
//   final int id;
//   final String title;
//   final String description;
//   final String category;
//   final double price;
//   final double discountPercentage;
//   final double rating;
//   final int stock;
//   final List<String> tags;
//   final String brand;
//   final String sku;
//   final double weight;
//   final Dimensions dimensions;
//   final String warrantyInformation;
//   final String shippingInformation;
//   final String availabilityStatus;
//   final List<Reviews> reviews;
//   final String returnPolicy;
//   final int minimumOrderQuantity;
//   final Meta meta;
//   final List<String> images;
//   final String thumbnail;

//   ProductModel(
//       {required this.id,
//       required this.title,
//       required this.description,
//       required this.category,
//       required this.price,
//       required this.discountPercentage,
//       required this.rating,
//       required this.stock,
//       required this.tags,
//       required this.brand,
//       required this.sku,
//       required this.weight,
//       required this.dimensions,
//       required this.warrantyInformation,
//       required this.shippingInformation,
//       required this.availabilityStatus,
//       required this.reviews,
//       required this.returnPolicy,
//       required this.minimumOrderQuantity,
//       required this.meta,
//       required this.images,
//       required this.thumbnail});

//   factory ProductModel.fromJson(Map<String, dynamic> jsonData) {
//     var reviewsJson = jsonData['reviews'] as List<dynamic>;
//     List<Reviews> reviewsList = reviewsJson
//         .map((reviewJson) =>
//             Reviews.fromJson(reviewJson as Map<String, dynamic>))
//         .toList();
//     return ProductModel(
//         id: jsonData['id'],
//         title: jsonData['title'],
//         description: jsonData['description'],
//         category: jsonData['category'],
//         price: jsonData['price'],
//         discountPercentage: jsonData['discountPercentage'],
//         rating: jsonData['rating'],
//         stock: jsonData['stock'],
//         tags: jsonData['tags'],
//         brand: jsonData['brand'],
//         sku: jsonData['sku'],
//         weight: jsonData['weight'],
//         dimensions: Dimensions.fromJson(jsonData['dimensions']),
//         warrantyInformation: jsonData['warrantyInformation'],
//         shippingInformation: jsonData['shippingInformation'],
//         availabilityStatus: jsonData['availabilityStatus'],
//         reviews: reviewsList,
//         returnPolicy: jsonData['returnPolicy'],
//         minimumOrderQuantity: jsonData['minimumOrderQuantity'],
//         meta: Meta.fromJson(jsonData['meta']),
//         images: jsonData['images'],
//         thumbnail: jsonData['thumbnail']);
//   }
//   @override
//   String toString() {
//     return 'product model data: id:$id, title:$title,description:$description,category:$category,price:$price,discountPercentage:$discountPercentage,rating :$rating,stock:$stock,tags:$tags,brand:$brand,sku:$sku,weight:$weight,dimensions:$dimensions,warrantyInformation:$warrantyInformation,shippingInformation:$shippingInformation,availabilityStatus:$availabilityStatus,reviews:$reviews,returnPolicy:$returnPolicy,minimumOrderQuantity:$minimumOrderQuantity,meta:$meta,images:$images,thumbnail:$thumbnail';
//   }
// }

// class Dimensions {
//   final double width;
//   final double height;
//   final double depth;
//   Dimensions({required this.width, required this.height, required this.depth});

//   factory Dimensions.fromJson(Map<String, dynamic> jsonData) {
//     return Dimensions(
//         width: jsonData['width'],
//         height: jsonData['height'],
//         depth: jsonData['depth']);
//   }
//   @override
//   String toString() {
//     return 'Dimensions data :width = $width, height = $height, depth = $depth';
//   }
// }

// class Reviews {
//   final double rating;
//   final String comment;
//   final String date;
//   final String reviewerName;
//   final String reviewerEmail;

//   Reviews(
//       {required this.rating,
//       required this.comment,
//       required this.date,
//       required this.reviewerName,
//       required this.reviewerEmail});

//   factory Reviews.fromJson(Map<String, dynamic> jsonData) {
//     return Reviews(
//         rating: jsonData['rating'],
//         comment: jsonData['comment'],
//         date: jsonData['date'],
//         reviewerName: jsonData['reviewerName'],
//         reviewerEmail: jsonData['reviewerEmail']);
//   }

//   @override
//   String toString() {
//     return "Reviews data :rating =$rating, comment =$comment, date =$date,reviewerName =$reviewerName,reviewerEmail =$reviewerEmail";
//   }
// }

// class Meta {
//   final String createdAt;
//   final String updatedAt;
//   final String barcode;
//   final String qrCode;

//   Meta(
//       {required this.createdAt,
//       required this.updatedAt,
//       required this.barcode,
//       required this.qrCode});

//   factory Meta.fromJson(Map<String, dynamic> jsonData) {
//     return Meta(
//         createdAt: jsonData["createdAt"],
//         updatedAt: jsonData["updatedAt"],
//         barcode: jsonData["barcode"],
//         qrCode: jsonData["qrCode"]);
//   }

//   @override
//   String toString() {
//     return "Meta data :createdAt =$createdAt,updatedAt =$updatedAt,barcode =$barcode,qrCode =$qrCode";
//   }
// }
class ProductModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final List<String> tags;
  final String brand;
  final String sku;
  final double weight;
  final Dimensions dimensions;
  final String warrantyInformation;
  final String shippingInformation;
  final String availabilityStatus;
  final List<Reviews> reviews;
  final String returnPolicy;
  final int minimumOrderQuantity;
  final Meta meta;
  final List<String> images;
  final String thumbnail;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.dimensions,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.reviews,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.meta,
    required this.images,
    required this.thumbnail,
  });

  factory ProductModel.fromJson(Map<String, dynamic> jsonData) {
    print('ProductModel.fromJson: $jsonData');
    var reviewsJson = jsonData['reviews'] as List<dynamic>? ?? [];
    List<Reviews> reviewsList = reviewsJson.map((reviewJson) {
      print('Review JSON: $reviewJson');
      return Reviews.fromJson(reviewJson as Map<String, dynamic>? ?? {});
    }).toList();

    return ProductModel(
      id: jsonData['id'] ?? 0,
      title: jsonData['title'] ?? '',
      description: jsonData['description'] ?? '',
      category: jsonData['category'] ?? '',
      price: (jsonData['price'] is int)
          ? (jsonData['price'] as int).toDouble()
          : jsonData['price'] as double,
      discountPercentage: (jsonData['discountPercentage'] is int)
          ? (jsonData['discountPercentage'] as int).toDouble()
          : jsonData['discountPercentage'] as double,
      rating: (jsonData['rating'] is int)
          ? (jsonData['rating'] as int).toDouble()
          : jsonData['rating'] as double,
      stock: jsonData['stock'] ?? 0,
      tags: List<String>.from(jsonData['tags'] ?? []),
      brand: jsonData['brand'] ?? '',
      sku: jsonData['sku'] ?? '',
      weight: (jsonData['weight'] is int)
          ? (jsonData['weight'] as int).toDouble()
          : jsonData['weight'] as double,
      dimensions: Dimensions.fromJson(jsonData['dimensions'] ?? {}),
      warrantyInformation: jsonData['warrantyInformation'] ?? '',
      shippingInformation: jsonData['shippingInformation'] ?? '',
      availabilityStatus: jsonData['availabilityStatus'] ?? '',
      reviews: reviewsList,
      returnPolicy: jsonData['returnPolicy'] ?? '',
      minimumOrderQuantity: jsonData['minimumOrderQuantity'] ?? 0,
      meta: Meta.fromJson(jsonData['meta'] ?? {}),
      images: List<String>.from(jsonData['images'] ?? []),
      thumbnail: jsonData['thumbnail'] ?? '',
    );
  }

  @override
  String toString() {
    return 'ProductModel data: id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, tags: $tags, brand: $brand, sku: $sku, weight: $weight, dimensions: $dimensions, warrantyInformation: $warrantyInformation, shippingInformation: $shippingInformation, availabilityStatus: $availabilityStatus, reviews: $reviews, returnPolicy: $returnPolicy, minimumOrderQuantity: $minimumOrderQuantity, meta: $meta, images: $images, thumbnail: $thumbnail';
  }
}

class Dimensions {
  final double width;
  final double height;
  final double depth;

  Dimensions({
    required this.width,
    required this.height,
    required this.depth,
  });

  factory Dimensions.fromJson(Map<String, dynamic>? jsonData) {
    if (jsonData == null) {
      return Dimensions(width: 0, height: 0, depth: 0);
    }
    print('Dimensions.fromJson: $jsonData');
    return Dimensions(
      width: (jsonData['width'] is int)
          ? (jsonData['width'] as int).toDouble()
          : jsonData['width'] as double,
      height: (jsonData['height'] is int)
          ? (jsonData['height'] as int).toDouble()
          : jsonData['height'] as double,
      depth: (jsonData['depth'] is int)
          ? (jsonData['depth'] as int).toDouble()
          : jsonData['depth'] as double,
    );
  }

  @override
  String toString() {
    return 'Dimensions data: width = $width, height = $height, depth = $depth';
  }
}

class Reviews {
  final double rating;
  final String comment;
  final String date;
  final String reviewerName;
  final String reviewerEmail;

  Reviews({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  factory Reviews.fromJson(Map<String, dynamic>? jsonData) {
    if (jsonData == null) {
      return Reviews(
        rating: 0,
        comment: '',
        date: '',
        reviewerName: '',
        reviewerEmail: '',
      );
    }
    print('Reviews.fromJson: $jsonData');
    return Reviews(
      rating: (jsonData['rating'] is int)
          ? (jsonData['rating'] as int).toDouble()
          : jsonData['rating'] as double,
      comment: jsonData['comment'] ?? '',
      date: jsonData['date'] ?? '',
      reviewerName: jsonData['reviewerName'] ?? '',
      reviewerEmail: jsonData['reviewerEmail'] ?? '',
    );
  }

  @override
  String toString() {
    return 'Reviews data: rating = $rating, comment = $comment, date = $date, reviewerName = $reviewerName, reviewerEmail = $reviewerEmail';
  }
}

class Meta {
  final String createdAt;
  final String updatedAt;
  final String barcode;
  final String qrCode;

  Meta({
    required this.createdAt,
    required this.updatedAt,
    required this.barcode,
    required this.qrCode,
  });

  factory Meta.fromJson(Map<String, dynamic>? jsonData) {
    if (jsonData == null) {
      return Meta(
        createdAt: '',
        updatedAt: '',
        barcode: '',
        qrCode: '',
      );
    }
    print('Meta.fromJson: $jsonData');
    return Meta(
      createdAt: jsonData['createdAt'] ?? '',
      updatedAt: jsonData['updatedAt'] ?? '',
      barcode: jsonData['barcode'] ?? '',
      qrCode: jsonData['qrCode'] ?? '',
    );
  }

  @override
  String toString() {
    return 'Meta data: createdAt = $createdAt, updatedAt = $updatedAt, barcode = $barcode, qrCode = $qrCode';
  }
}
