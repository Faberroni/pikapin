// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:untitled/constants/constants.dart';
// import 'package:untitled/Product.dart';

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//           child: Text(
//             'Sayur dan Buah',
//             style: Theme.of(context)
//                 .textTheme
//                 .headline5
//                 ?.copyWith(fontWeight: FontWeight.bold),
//           ),
//         ),
//         Categories(),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//             child: GridView.builder(
//               itemCount: products.length,
//               gridDelegate:
//                   SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 0.75,
//                     mainAxisSpacing: kDefaultPaddin,
//                     crossAxisSpacing: kDefaultPaddin,),
//               itemBuilder: (context, index) => itemCard(
//                 product: products[index],
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

// class itemCard extends StatelessWidget {
//   final Product product;
//   final Function press;
//   const itemCard({Key? key, required this.product, required this.press}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Expanded(
//           child: Container(
//             padding: EdgeInsets.all(kDefaultPaddin),
//             //height: 180,
//             //width: 160,
//             decoration: BoxDecoration(
//               color: product.color,
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Image.asset(product.image),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
//           child: Text(
//             products[0].title,
//             style: TextStyle(color: kTextLightColor),
//           ),
//         ),
//         Text(
//           '\$${product.price',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         )
//       ],
//     );
//   }
// }

// class Categories extends StatefulWidget {
//   @override
//   _CategoriesState createState() => _CategoriesState();
// }

// class _CategoriesState extends State<Categories> {
//   List<String> categories = ['Buah', 'Sayur'];
//   int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
//       child: SizedBox(
//         height: 25,
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: categories.length,
//           itemBuilder: (context, index) => buildCategory(index),
//         ),
//       ),
//     );
//   }
// }

// Widget buildCategory(int index) {
//   return GestureDetector(
//     onTap: () {
//       setState(() {
//         selectedIndex = index;
//       });
//     },
//     child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text(
//             categories[index],
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: selectedIndex == index ? kTextColor : kTextLightColor,
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(top: kDefaultPaddin / 4),
//             height: 2,
//             width: 30,
//             color: selectedIndex == index ? Colors.black : Colors.transparent,
//           )
//         ],
//       ),
//     ),
//   );
// }