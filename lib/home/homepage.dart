import 'package:flutter/material.dart';
import 'package:medlive/constants.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/home/profile.png'),
                            radius: 24,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              "Hi , Alaa !",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 30,
                          ),
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
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Contact",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff0EBE7E)),
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
                      "Categories",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View all",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff0EBE7E)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        height: 121,
                        width: 97,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                                image: AssetImage(
                                    'assets/images/home/product.png')),
                            Text(
                              "Baby Product",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        height: 121,
                        width: 97,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                                image: AssetImage(
                                    'assets/images/home/product.png')),
                            Text(
                              "Baby Product",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        height: 121,
                        width: 97,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                                image: AssetImage(
                                    'assets/images/home/product.png')),
                            Text(
                              "Baby Product",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        height: 121,
                        width: 97,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 2),
                                  blurRadius: 2),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                                image: AssetImage(
                                    'assets/images/home/product.png')),
                            Text(
                              "Baby Product",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View all",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff0EBE7E)),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 223,
                    width: 180,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff0EBE7E)),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 2),
                              blurRadius: 3),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.favorite_border_outlined),
                                  color: const Color(0xff0EBE7E)),
                            ),
                            const Image(
                                height: 120,
                                image: AssetImage(
                                    'assets/images/home/moisturizing-renewal-cream.webp')),
                          ],
                        ),
                        const Text(
                          "renewal-cream",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "144.99 \$",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              width: 77,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Color(0xff0EBE7E),
                                    ),
                                    foregroundColor:
                                        WidgetStatePropertyAll(Colors.white),
                                  ),
                                  child: const Text("Buy")),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 223,
                    width: 180,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff0EBE7E)),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 2),
                              blurRadius: 3),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.favorite_border_outlined),
                                  color: const Color(0xff0EBE7E)),
                            ),
                            const Image(
                                height: 120,
                                image: AssetImage(
                                    'assets/images/home/moisturizing-renewal-cream.webp')),
                          ],
                        ),
                        const Text(
                          "renewal-cream",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "144.99 \$",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              width: 77,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Color(0xff0EBE7E),
                                    ),
                                    foregroundColor:
                                        WidgetStatePropertyAll(Colors.white),
                                  ),
                                  child: const Text("Buy")),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
