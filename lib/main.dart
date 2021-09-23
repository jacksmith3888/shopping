import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop/screens/products_overview.dart';
import 'package:shop/screens/product_detail.dart';
import 'package:shop/providers/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      primarySwatch: Colors.purple,
      fontFamily: 'Lato',
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
          title: 'Shop',
          theme: theme.copyWith(
            colorScheme:
                theme.colorScheme.copyWith(secondary: Colors.deepOrange),
          ),
          routes: {
            ProductDetail.routeName: (ctx) => ProductDetail(),
          },
          home: ProductsOverview()),
    );
  }
}
