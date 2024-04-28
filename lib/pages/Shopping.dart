// import 'package:flutter/material.dart';
// import 'package:flutter_application/main.dart';
// import 'package:flutter_application/models/products.dart';
// import 'package:flutter_application/pages/ProductDetailScreen.dart';

// class Shopping extends StatefulWidget {
//   final String user;

//   Shopping({Key? key, required this.user}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() {
//     return _ShoppingState();
//   }
// }

// class _ShoppingState extends State<Shopping> {
//   String? _selectedLanguage;

//   @override
//   Widget build(BuildContext context) {
//     final texts = AppLocalizations.of(context);
//     final List<Products> products = [
//       Products(
//           imageURL:
//               "https://images.unsplash.com/photo-1588073882362-b4309c60cea0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//           name: texts.puzzle,
//           date: '20/02/2024',
//           price: '00.0',
//           description: "sdasdasd"),
//       Products(
//           imageURL:
//               "https://images.unsplash.com/photo-1576566588028-4147f3842f27?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//           name: '',
//           date: '15/02/2024',
//           price: '00.0',
//           description: "ssssss"),
//       Products(
//           imageURL:
//               "https://plus.unsplash.com/premium_photo-1675865395088-cbb5d52d5de5?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//           name: 'Bandera',
//           date: '10/01/2024',
//           price: '00.0',
//           description: "aaaaaa"),
//       Products(
//           imageURL:
//               "https://images.unsplash.com/photo-1551754809-831e7bd2deed?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//           name: 'Imagen coleccionista',
//           date: '18/08/2023',
//           price: '00.0',
//           description: "sdaas"),
//       Products(
//           imageURL:
//               "https://images.unsplash.com/photo-1560774358-d727658f457c?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//           name: 'Gorra',
//           date: '20/2/2024',
//           price: '00.0',
//           description: ""),
//       Products(
//           imageURL:
//               "https://images.unsplash.com/photo-1601001435957-74f0958a93fb?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//           name: 'Libreta',
//           date: '10/5/2023',
//           price: '00.0',
//           description: ""),
//       Products(
//           imageURL:
//               "https://images.unsplash.com/photo-1636103952204-0b738c225264?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//           name: 'Collar',
//           date: '10/5/2023',
//           price: '00.0',
//           description: ""),
//       Products(
//           imageURL:
//               "https://images.unsplash.com/photo-1588073882362-b4309c60cea0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//           name: '',
//           date: '10/5/2023',
//           price: '00.0',
//           description: ""),
//       Products(
//           imageURL:
//               "https://images.unsplash.com/photo-1588073882362-b4309c60cea0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//           name: '',
//           date: '10/5/2023',
//           price: '00.0',
//           description: ""),
//       Products(
//           imageURL:
//               "https://images.unsplash.com/photo-1588073882362-b4309c60cea0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//           name: 'Cama',
//           date: '10/5/2023',
//           price: '00.0',
//           description: ""),
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Compras'),
//         actions: languageSelector(context),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: <Widget>[
//           const Row(
//             children: [
//               SizedBox(width: 200, height: 0.0),
//             ],
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: products.length,
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ProductDetailScreen(
//                           product: products[index],
//                           heroTag: 'producto_image_${products[index].name}',
//                         ),
//                       ),
//                     );
//                   },
//                   child: ListTile(
//                     title: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Hero(
//                           tag: 'producto_image_${products[index].name}',
//                           child: Image.network(
//                             products[index].imageURL,
//                             width: 100,
//                             height: 100,
//                           ),
//                         ),
//                         Padding(padding: const EdgeInsets.all(10)),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               products[index].name,
//                               style: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold),
//                             ),
//                             Text('Nombre: ${texts.login}'),
//                             //Text(
//                             //    'Descripción: ${products[index].description.toString()}'),
//                             // Text('Fecha: ${products[index].date.toString()}'),
//                             // Text('Precio: ${products[index].price.toString()}'),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => Shopping(user: widget.user),
//                 ),
//               );
//             },
//             child: Text('Compras'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// List<Widget> languageSelector(BuildContext context) {
//   final appState = context.findAncestorStateOfType<MainState>();
//   return [
//     DropdownButton(
//       value: appState?.locale,
//       icon: const Icon(Icons.language),
//       items: const [
//         DropdownMenuItem(
//           value: Locale('en', 'US'),
//           child: Text('English'),
//         ),
//         DropdownMenuItem(
//           value: Locale('es', 'ES'),
//           child: Text('Español'),
//         ),
//         DropdownMenuItem(
//           value: Locale('de', 'DE'),
//           child: Text('Aleman'),
//         ),
//       ],
//       onChanged: (locale) {
//         if (locale != null) {
//           appState?.changeLanguage(locale);
//         }
//       },
//     )
//   ];
// }
