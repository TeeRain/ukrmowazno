// import 'package:flutter/material.dart';
// import 'package:ukrmowazno/data/categories.dart';
// import 'package:ukrmowazno/data/user.dart';
// import 'package:ukrmowazno/widget/category_header_widget.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           leading: const Icon(Icons.menu),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           title: const Text('ЄМова'),
//           bottom: PreferredSize(
//             preferredSize: const Size.fromHeight(30),
//             child: Container(
//               padding: const EdgeInsets.all(16),
//               alignment: Alignment.centerLeft,
//               child: buildWelcome(username),
//             ),
//           ),
//           flexibleSpace: Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Colors.deepOrange, Colors.purple],
//                 begin: Alignment.topRight,
//                 end: Alignment.bottomLeft,
//               ),
//             ),
//           ),
//           actions: const [
//             Icon(Icons.search),
//             SizedBox(width: 12),
//           ],
//         ),
//         body: ListView(
//           physics: const BouncingScrollPhysics(),
//           padding: const EdgeInsets.all(16),
//           children: [
//             const SizedBox(height: 10),
//             buildCategories(),
//           ],
//         ),
//       );

//   Widget buildWelcome(String username) => Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Привіт, $username!',
//             style: const TextStyle(fontSize: 25, color: Colors.white),
//           ),
//         ],
//       );

//   Widget buildCategories() => SizedBox(
//         height: 300,
//         child: GridView(
//           primary: false,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 4 / 3,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//           ),
//           children: categories
//               .map((category) => CategoryHeaderWidget(category: category))
//               .toList(),
//         ),
//       );
// }
