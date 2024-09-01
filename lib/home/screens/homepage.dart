import 'package:flutter/material.dart';
import 'package:medlive/constants.dart';
import 'package:medlive/home/components/custom_product_container.dart';
import 'package:medlive/services/get_products_service.dart';
import 'package:medlive/services/product_model.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(children: [
          Container(
            height: 258,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff0EBE7E),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/home/profile.png'),
                        radius: 24,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Text(
                          "Hi , Alaa !",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 95),
                  child: Container(
                    height: 43,
                    width: 320,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 1),
                              spreadRadius: 2,
                              blurRadius: 2),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search medicine",
                        hintStyle: TextStyle(color: Colors.grey),
                        icon: Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -40,
                  left: 50,
                  child: Container(
                    width: 321,
                    height: 142,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 2),
                              blurRadius: 3),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Contact with\nconsultant",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Contact",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff0EBE7E)),
                                ))
                          ],
                        ),
                        Image.asset('assets/images/home/doctor.png')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Products",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'ViewmoreProductsScreen');
                  },
                  child: const Text(
                    "View more",
                    style: TextStyle(fontSize: 18, color: Color(0xff0EBE7E)),
                  ),
                ),
              ],
            ),
          ),
          FutureBuilder<List<ProductModel>>(
            future: GetProductsService().getProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProductModel> products = snapshot.data!;
                return Expanded(
                  child: GridView.builder(
                      itemCount: products.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return CustomProductContainer(
                          product: products[index],
                        );
                      }),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )
        ]),
      ),
    );
  }
}
