import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screen/product_view.dart';
import './provider/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
      ],
      child: MaterialApp(
        title: 'Categories',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          accentColor: Color.fromARGB(255, 169, 241, 0),
        ),
        home: ProductViewScreen(),
        // routes: {
        // },
      ),
    );
  }
}
