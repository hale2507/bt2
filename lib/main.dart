import 'package:bt2/style/colors.dart';
import 'package:flutter/material.dart';

import 'style/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Gordita',
      ),
      home: const CategoryPage(),
    );
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
              height: 120,
              width: size.width,
              padding: const EdgeInsets.only(left: 20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(218, 88, 128, 232),
              ),
              child: SafeArea(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Categories',
                          style: AppStyle.b32w,
                        ),
                      ],
                    )),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 7),
            height: size.height - 60,
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 7.0, vertical: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        LongTopCourseCard(
                            background: AppColors.green2,
                            title: 'Fashion',
                            image: 'assets/images/shirts.png'),
                        ShortBottomCourseCard(
                            background: AppColors.blue1,
                            title: 'Electronics',
                            image: 'assets/images/desktop.png'),
                        ShortTopCourseCard(
                            background: AppColors.purple,
                            title: 'Footwear',
                            image: 'assets/images/sneaker.png'),
                        LongBottomCourseCard(
                            background: AppColors.green1,
                            title: 'Furniture',
                            image: 'assets/images/armchair.png'),
                      ],
                    ),
                    Column(
                      children: const [
                        ShortBottomCourseCard(
                            background: AppColors.orange,
                            title: 'Beauty',
                            image: 'assets/images/make-up.png'),
                        LongTopCourseCard(
                            background: AppColors.pink,
                            title: 'Jewellery',
                            image: 'assets/images/diamond.png'),
                        ShortBottomCourseCard(
                            background: AppColors.blue2,
                            title: 'Toys',
                            image: 'assets/images/teddy-bear.png'),
                        LongTopCourseCard(
                            background: AppColors.yellow,
                            title: 'Mobile',
                            image: 'assets/images/smartphone.png'),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}

class LongTopCourseCard extends StatelessWidget {
  final Color background;
  final String title;
  final String image;
  const LongTopCourseCard(
      {Key? key,
      required this.background,
      required this.title,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      width: 155,
      height: 188,
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(34),
          border: Border.all(color: Colors.white, width: 10),
          boxShadow: [
            BoxShadow(
                blurRadius: 50,
                color: const Color(0xFF0B0C2A).withOpacity(.09),
                offset: const Offset(10, 10))
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(height: 16),
        Text(title, style: AppStyle.m17w),
        Expanded(child: Image.asset(image)),
      ]),
    );
  }
}

class LongBottomCourseCard extends StatelessWidget {
  final Color background;
  final String title;
  final String image;
  const LongBottomCourseCard(
      {Key? key,
      required this.background,
      required this.title,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      width: 155,
      height: 188,
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(34),
          border: Border.all(color: Colors.white, width: 10),
          boxShadow: [
            BoxShadow(
                blurRadius: 50,
                color: const Color(0xFF0B0C2A).withOpacity(.09),
                offset: const Offset(10, 10))
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(height: 8),
        Expanded(child: Image.asset(image)),
        Text(title, style: AppStyle.m17w),
        const SizedBox(height: 12),
      ]),
    );
  }
}

class ShortTopCourseCard extends StatelessWidget {
  final Color background;
  final String title;
  final String image;
  const ShortTopCourseCard(
      {Key? key,
      required this.background,
      required this.title,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      width: 155,
      height: 163,
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(34),
          border: Border.all(color: Colors.white, width: 10),
          boxShadow: [
            BoxShadow(
                blurRadius: 50,
                color: const Color(0xFF0B0C2A).withOpacity(.09),
                offset: const Offset(10, 10))
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(height: 16),
        Text(title, style: AppStyle.m17w),
        Expanded(child: Image.asset(image)),
      ]),
    );
  }
}

class ShortBottomCourseCard extends StatelessWidget {
  final Color background;
  final String title;
  final String image;
  const ShortBottomCourseCard(
      {Key? key,
      required this.background,
      required this.title,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      width: 155,
      height: 163,
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(34),
          border: Border.all(color: Colors.white, width: 10),
          boxShadow: [
            BoxShadow(
                blurRadius: 50,
                color: const Color(0xFF0B0C2A).withOpacity(.09),
                offset: const Offset(10, 10))
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(height: 8),
        Expanded(child: Image.asset(image)),
        Text(title, style: AppStyle.m17w),
        const SizedBox(height: 12),
      ]),
    );
  }
}
